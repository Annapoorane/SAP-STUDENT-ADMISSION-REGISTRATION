@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZSTSTUD_ADM_TAB_03003'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZSTR_STUD_ADM_TAB_03003
  as select from ZSTUD_ADM_TAB_03
{
  key student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  gender as Gender,
  date_of_birth as DateOfBirth,
  phone_number as PhoneNumber,
  email_id as EmailID,
  course_id as CourseID,
  course_name as CourseName,
  department as Department,
  admission_date as AdmissionDate,
  academic_year as AcademicYear,
  semester as Semester,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  cuky_field as CukyField,
  @Semantics.amount.currencyCode: 'CukyField'
  total_fees as TotalFees,
  @Semantics.amount.currencyCode: 'CukyField'
  fees_paid as FeesPaid,
  @Semantics.amount.currencyCode: 'CukyField'
  fees_balance as FeesBalance,
  admission_status as AdmissionStatus,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
