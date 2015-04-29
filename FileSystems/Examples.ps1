Get-ChildItem –path C:\windows\system32\* | Where-object Length –gt 10MB | sort Length –Descending | select –first 10 | ft –property Name,@{n=’File Size (MB)’;e={$PSItem.Length / 1MB};formatstring=’N1’} -autosize
