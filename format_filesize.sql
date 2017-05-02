create or replace function filesize_format (
	P_FILESIZE				in number
	) return varchar2
as
	l_return						varchar2(300);
begin
case 
	when nvl(P_FILESIZE,0) >= 1073741824 then 
		l_return := trim(to_char(round(P_FILESIZE / 1073741824, 1),'999G990D0')) || ' GB';
	when nvl(P_FILESIZE,0) >= 1048576 then 
		l_return := trim(to_char(round(P_FILESIZE / 1048576, 1),'999G990D0')) || ' MB';
	when nvl(P_FILESIZE,0) >= 1024 then 
		l_return := trim(to_char(round(P_FILESIZE / 1024, 1),'999G990D0')) || ' KB';		
	when nvl(P_FILESIZE,0) > 1 then 
		l_return := trim(to_char(round(P_FILESIZE / 1024, 1),'999G990D0')) || ' bytes';		
	when nvl(P_FILESIZE,0) = 1 then 
		l_return := trim(to_char(round(P_FILESIZE / 1024, 1),'999G990D0')) || ' byte';		
	else 
		l_return := '0 bytes';
end case;
return l_return;
end filesize_format;
