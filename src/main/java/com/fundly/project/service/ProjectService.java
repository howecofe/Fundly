package com.fundly.project.service;

import com.persistence.dto.*;

public interface ProjectService {
    ProjectTemplate getById(String pjId);

    ProjectAddResponse add(ProjectAddRequest pjAddReq);

    ProjectInfoUpdateResponse updatePjInfo(ProjectInfoUpdateRequest pjInfoUpdate);


    ProjectBasicInfo getProjectBasicInfo(String pj_id);

    String getEditingProjectId(String user_email);
}
