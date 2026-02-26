@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZSTSTUD_ADM_TAB_03003'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZSTC_STUD_ADM_TAB_03003
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZSTR_STUD_ADM_TAB_03003
  association [1..1] to ZZSTR_STUD_ADM_TAB_03003 as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  Gender,
  DateOfBirth,
  PhoneNumber,
  EmailID,
  CourseID,
  CourseName,
  Department,
  AdmissionDate,
  AcademicYear,
  Semester,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  CukyField,
  @Semantics: {
    Amount.Currencycode: 'CukyField'
  }
  TotalFees,
  @Semantics: {
    Amount.Currencycode: 'CukyField'
  }
  FeesPaid,
  @Semantics: {
    Amount.Currencycode: 'CukyField'
  }
  FeesBalance,
  AdmissionStatus,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
