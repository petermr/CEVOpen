package org.cevopen.cevtagset;
import java.util.*;
import org.knime.ext.textprocessing.data.*;

public class CEVTagSet implements TagBuilder {

	@Override
	public List<String> asStringList() {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<String>(m_tagMap.size());
		list.addAll(m_tagMap.keySet());
		return list;
	}

	@Override
	public Tag buildTag(final String value) {
		Tag tag = m_tagMap.get(value);
	    if (tag == null) {
	        tag = m_tagMap.get(DEFAULT_TAG);
	    }
	    return tag;
	}

	@Override
	public Set<Tag> getTags() {
		// TODO Auto-generated method stub
		 Set<Tag> tagSet = new HashSet<Tag>(m_tagMap.size());
		    tagSet.addAll(m_tagMap.values());
		    return tagSet;
	}

	@Override
	public String getType() {
		// TODO Auto-generated method stub
		return CEVTagSet.TAG_TYPE;
	}

	public static final String TAG_TYPE="CEV";
	public static final String DEFAULT_TAG =CEVTag.ACTIVITY.toString();
	private Map<String, Tag> m_tagMap;
	
	public CEVTagSet()
	{
		m_tagMap = new HashMap<String, Tag>();
		for(CEVTag tagValue : CEVTag.values())
		{
			m_tagMap.put(tagValue.toString(), new Tag(tagValue.toString(), TAG_TYPE));
		}
	}
}
;