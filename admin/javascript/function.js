function comfirm()
{
	if(confirm('�Ƿ�ȷ�ϵ�ǰ������')==false)
	{
		return false;
	}
}


function CheckAll(form)
{
    for (var i = 0; i < form.elements.length; i++)
    {
        var e = form.elements[i];
        if (e.name != 'chkAll' && e.disabled == false)
        {
            e.checked = form.chkAll.checked;
        }
    }
}