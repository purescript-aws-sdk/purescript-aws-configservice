
module AWS.ConfigService.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ARN = ARN String
derive instance newtypeARN :: Newtype ARN _
derive instance repGenericARN :: Generic ARN _
instance showARN :: Show ARN where show = genericShow
instance decodeARN :: Decode ARN where decode = genericDecode options
instance encodeARN :: Encode ARN where encode = genericEncode options



newtype AccountId = AccountId String
derive instance newtypeAccountId :: Newtype AccountId _
derive instance repGenericAccountId :: Generic AccountId _
instance showAccountId :: Show AccountId where show = genericShow
instance decodeAccountId :: Decode AccountId where decode = genericDecode options
instance encodeAccountId :: Encode AccountId where encode = genericEncode options



newtype AllSupported = AllSupported Boolean
derive instance newtypeAllSupported :: Newtype AllSupported _
derive instance repGenericAllSupported :: Generic AllSupported _
instance showAllSupported :: Show AllSupported where show = genericShow
instance decodeAllSupported :: Decode AllSupported where decode = genericDecode options
instance encodeAllSupported :: Encode AllSupported where encode = genericEncode options



newtype AvailabilityZone = AvailabilityZone String
derive instance newtypeAvailabilityZone :: Newtype AvailabilityZone _
derive instance repGenericAvailabilityZone :: Generic AvailabilityZone _
instance showAvailabilityZone :: Show AvailabilityZone where show = genericShow
instance decodeAvailabilityZone :: Decode AvailabilityZone where decode = genericDecode options
instance encodeAvailabilityZone :: Encode AvailabilityZone where encode = genericEncode options



newtype AwsRegion = AwsRegion String
derive instance newtypeAwsRegion :: Newtype AwsRegion _
derive instance repGenericAwsRegion :: Generic AwsRegion _
instance showAwsRegion :: Show AwsRegion where show = genericShow
instance decodeAwsRegion :: Decode AwsRegion where decode = genericDecode options
instance encodeAwsRegion :: Encode AwsRegion where encode = genericEncode options



newtype BaseResourceId = BaseResourceId String
derive instance newtypeBaseResourceId :: Newtype BaseResourceId _
derive instance repGenericBaseResourceId :: Generic BaseResourceId _
instance showBaseResourceId :: Show BaseResourceId where show = genericShow
instance decodeBaseResourceId :: Decode BaseResourceId where decode = genericDecode options
instance encodeBaseResourceId :: Encode BaseResourceId where encode = genericEncode options



newtype ChannelName = ChannelName String
derive instance newtypeChannelName :: Newtype ChannelName _
derive instance repGenericChannelName :: Generic ChannelName _
instance showChannelName :: Show ChannelName where show = genericShow
instance decodeChannelName :: Decode ChannelName where decode = genericDecode options
instance encodeChannelName :: Encode ChannelName where encode = genericEncode options



newtype ChronologicalOrder = ChronologicalOrder String
derive instance newtypeChronologicalOrder :: Newtype ChronologicalOrder _
derive instance repGenericChronologicalOrder :: Generic ChronologicalOrder _
instance showChronologicalOrder :: Show ChronologicalOrder where show = genericShow
instance decodeChronologicalOrder :: Decode ChronologicalOrder where decode = genericDecode options
instance encodeChronologicalOrder :: Encode ChronologicalOrder where encode = genericEncode options



-- | <p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>
newtype Compliance = Compliance 
  { "ComplianceType" :: NullOrUndefined (ComplianceType)
  , "ComplianceContributorCount" :: NullOrUndefined (ComplianceContributorCount)
  }
derive instance newtypeCompliance :: Newtype Compliance _
derive instance repGenericCompliance :: Generic Compliance _
instance showCompliance :: Show Compliance where show = genericShow
instance decodeCompliance :: Decode Compliance where decode = genericDecode options
instance encodeCompliance :: Encode Compliance where encode = genericEncode options

-- | Constructs Compliance from required parameters
newCompliance :: Compliance
newCompliance  = Compliance { "ComplianceContributorCount": (NullOrUndefined Nothing), "ComplianceType": (NullOrUndefined Nothing) }

-- | Constructs Compliance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompliance' :: ( { "ComplianceType" :: NullOrUndefined (ComplianceType) , "ComplianceContributorCount" :: NullOrUndefined (ComplianceContributorCount) } -> {"ComplianceType" :: NullOrUndefined (ComplianceType) , "ComplianceContributorCount" :: NullOrUndefined (ComplianceContributorCount) } ) -> Compliance
newCompliance'  customize = (Compliance <<< customize) { "ComplianceContributorCount": (NullOrUndefined Nothing), "ComplianceType": (NullOrUndefined Nothing) }



-- | <p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it, and it is noncompliant if any of these resources do not comply.</p>
newtype ComplianceByConfigRule = ComplianceByConfigRule 
  { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64)
  , "Compliance" :: NullOrUndefined (Compliance)
  }
derive instance newtypeComplianceByConfigRule :: Newtype ComplianceByConfigRule _
derive instance repGenericComplianceByConfigRule :: Generic ComplianceByConfigRule _
instance showComplianceByConfigRule :: Show ComplianceByConfigRule where show = genericShow
instance decodeComplianceByConfigRule :: Decode ComplianceByConfigRule where decode = genericDecode options
instance encodeComplianceByConfigRule :: Encode ComplianceByConfigRule where encode = genericEncode options

-- | Constructs ComplianceByConfigRule from required parameters
newComplianceByConfigRule :: ComplianceByConfigRule
newComplianceByConfigRule  = ComplianceByConfigRule { "Compliance": (NullOrUndefined Nothing), "ConfigRuleName": (NullOrUndefined Nothing) }

-- | Constructs ComplianceByConfigRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComplianceByConfigRule' :: ( { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "Compliance" :: NullOrUndefined (Compliance) } -> {"ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "Compliance" :: NullOrUndefined (Compliance) } ) -> ComplianceByConfigRule
newComplianceByConfigRule'  customize = (ComplianceByConfigRule <<< customize) { "Compliance": (NullOrUndefined Nothing), "ConfigRuleName": (NullOrUndefined Nothing) }



newtype ComplianceByConfigRules = ComplianceByConfigRules (Array ComplianceByConfigRule)
derive instance newtypeComplianceByConfigRules :: Newtype ComplianceByConfigRules _
derive instance repGenericComplianceByConfigRules :: Generic ComplianceByConfigRules _
instance showComplianceByConfigRules :: Show ComplianceByConfigRules where show = genericShow
instance decodeComplianceByConfigRules :: Decode ComplianceByConfigRules where decode = genericDecode options
instance encodeComplianceByConfigRules :: Encode ComplianceByConfigRules where encode = genericEncode options



-- | <p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.</p>
newtype ComplianceByResource = ComplianceByResource 
  { "ResourceType" :: NullOrUndefined (StringWithCharLimit256)
  , "ResourceId" :: NullOrUndefined (BaseResourceId)
  , "Compliance" :: NullOrUndefined (Compliance)
  }
derive instance newtypeComplianceByResource :: Newtype ComplianceByResource _
derive instance repGenericComplianceByResource :: Generic ComplianceByResource _
instance showComplianceByResource :: Show ComplianceByResource where show = genericShow
instance decodeComplianceByResource :: Decode ComplianceByResource where decode = genericDecode options
instance encodeComplianceByResource :: Encode ComplianceByResource where encode = genericEncode options

-- | Constructs ComplianceByResource from required parameters
newComplianceByResource :: ComplianceByResource
newComplianceByResource  = ComplianceByResource { "Compliance": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs ComplianceByResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComplianceByResource' :: ( { "ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ResourceId" :: NullOrUndefined (BaseResourceId) , "Compliance" :: NullOrUndefined (Compliance) } -> {"ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ResourceId" :: NullOrUndefined (BaseResourceId) , "Compliance" :: NullOrUndefined (Compliance) } ) -> ComplianceByResource
newComplianceByResource'  customize = (ComplianceByResource <<< customize) { "Compliance": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



newtype ComplianceByResources = ComplianceByResources (Array ComplianceByResource)
derive instance newtypeComplianceByResources :: Newtype ComplianceByResources _
derive instance repGenericComplianceByResources :: Generic ComplianceByResources _
instance showComplianceByResources :: Show ComplianceByResources where show = genericShow
instance decodeComplianceByResources :: Decode ComplianceByResources where decode = genericDecode options
instance encodeComplianceByResources :: Encode ComplianceByResources where encode = genericEncode options



-- | <p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.</p>
newtype ComplianceContributorCount = ComplianceContributorCount 
  { "CappedCount" :: NullOrUndefined (Int)
  , "CapExceeded" :: NullOrUndefined (Boolean)
  }
derive instance newtypeComplianceContributorCount :: Newtype ComplianceContributorCount _
derive instance repGenericComplianceContributorCount :: Generic ComplianceContributorCount _
instance showComplianceContributorCount :: Show ComplianceContributorCount where show = genericShow
instance decodeComplianceContributorCount :: Decode ComplianceContributorCount where decode = genericDecode options
instance encodeComplianceContributorCount :: Encode ComplianceContributorCount where encode = genericEncode options

-- | Constructs ComplianceContributorCount from required parameters
newComplianceContributorCount :: ComplianceContributorCount
newComplianceContributorCount  = ComplianceContributorCount { "CapExceeded": (NullOrUndefined Nothing), "CappedCount": (NullOrUndefined Nothing) }

-- | Constructs ComplianceContributorCount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComplianceContributorCount' :: ( { "CappedCount" :: NullOrUndefined (Int) , "CapExceeded" :: NullOrUndefined (Boolean) } -> {"CappedCount" :: NullOrUndefined (Int) , "CapExceeded" :: NullOrUndefined (Boolean) } ) -> ComplianceContributorCount
newComplianceContributorCount'  customize = (ComplianceContributorCount <<< customize) { "CapExceeded": (NullOrUndefined Nothing), "CappedCount": (NullOrUndefined Nothing) }



newtype ComplianceResourceTypes = ComplianceResourceTypes (Array StringWithCharLimit256)
derive instance newtypeComplianceResourceTypes :: Newtype ComplianceResourceTypes _
derive instance repGenericComplianceResourceTypes :: Generic ComplianceResourceTypes _
instance showComplianceResourceTypes :: Show ComplianceResourceTypes where show = genericShow
instance decodeComplianceResourceTypes :: Decode ComplianceResourceTypes where decode = genericDecode options
instance encodeComplianceResourceTypes :: Encode ComplianceResourceTypes where encode = genericEncode options



newtype ComplianceSummariesByResourceType = ComplianceSummariesByResourceType (Array ComplianceSummaryByResourceType)
derive instance newtypeComplianceSummariesByResourceType :: Newtype ComplianceSummariesByResourceType _
derive instance repGenericComplianceSummariesByResourceType :: Generic ComplianceSummariesByResourceType _
instance showComplianceSummariesByResourceType :: Show ComplianceSummariesByResourceType where show = genericShow
instance decodeComplianceSummariesByResourceType :: Decode ComplianceSummariesByResourceType where decode = genericDecode options
instance encodeComplianceSummariesByResourceType :: Encode ComplianceSummariesByResourceType where encode = genericEncode options



-- | <p>The number of AWS Config rules or AWS resources that are compliant and noncompliant.</p>
newtype ComplianceSummary = ComplianceSummary 
  { "CompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount)
  , "NonCompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount)
  , "ComplianceSummaryTimestamp" :: NullOrUndefined (Date)
  }
derive instance newtypeComplianceSummary :: Newtype ComplianceSummary _
derive instance repGenericComplianceSummary :: Generic ComplianceSummary _
instance showComplianceSummary :: Show ComplianceSummary where show = genericShow
instance decodeComplianceSummary :: Decode ComplianceSummary where decode = genericDecode options
instance encodeComplianceSummary :: Encode ComplianceSummary where encode = genericEncode options

-- | Constructs ComplianceSummary from required parameters
newComplianceSummary :: ComplianceSummary
newComplianceSummary  = ComplianceSummary { "ComplianceSummaryTimestamp": (NullOrUndefined Nothing), "CompliantResourceCount": (NullOrUndefined Nothing), "NonCompliantResourceCount": (NullOrUndefined Nothing) }

-- | Constructs ComplianceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComplianceSummary' :: ( { "CompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount) , "NonCompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount) , "ComplianceSummaryTimestamp" :: NullOrUndefined (Date) } -> {"CompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount) , "NonCompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount) , "ComplianceSummaryTimestamp" :: NullOrUndefined (Date) } ) -> ComplianceSummary
newComplianceSummary'  customize = (ComplianceSummary <<< customize) { "ComplianceSummaryTimestamp": (NullOrUndefined Nothing), "CompliantResourceCount": (NullOrUndefined Nothing), "NonCompliantResourceCount": (NullOrUndefined Nothing) }



-- | <p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each compliance.</p>
newtype ComplianceSummaryByResourceType = ComplianceSummaryByResourceType 
  { "ResourceType" :: NullOrUndefined (StringWithCharLimit256)
  , "ComplianceSummary" :: NullOrUndefined (ComplianceSummary)
  }
derive instance newtypeComplianceSummaryByResourceType :: Newtype ComplianceSummaryByResourceType _
derive instance repGenericComplianceSummaryByResourceType :: Generic ComplianceSummaryByResourceType _
instance showComplianceSummaryByResourceType :: Show ComplianceSummaryByResourceType where show = genericShow
instance decodeComplianceSummaryByResourceType :: Decode ComplianceSummaryByResourceType where decode = genericDecode options
instance encodeComplianceSummaryByResourceType :: Encode ComplianceSummaryByResourceType where encode = genericEncode options

-- | Constructs ComplianceSummaryByResourceType from required parameters
newComplianceSummaryByResourceType :: ComplianceSummaryByResourceType
newComplianceSummaryByResourceType  = ComplianceSummaryByResourceType { "ComplianceSummary": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs ComplianceSummaryByResourceType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComplianceSummaryByResourceType' :: ( { "ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) } -> {"ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) } ) -> ComplianceSummaryByResourceType
newComplianceSummaryByResourceType'  customize = (ComplianceSummaryByResourceType <<< customize) { "ComplianceSummary": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



newtype ComplianceType = ComplianceType String
derive instance newtypeComplianceType :: Newtype ComplianceType _
derive instance repGenericComplianceType :: Generic ComplianceType _
instance showComplianceType :: Show ComplianceType where show = genericShow
instance decodeComplianceType :: Decode ComplianceType where decode = genericDecode options
instance encodeComplianceType :: Encode ComplianceType where encode = genericEncode options



newtype ComplianceTypes = ComplianceTypes (Array ComplianceType)
derive instance newtypeComplianceTypes :: Newtype ComplianceTypes _
derive instance repGenericComplianceTypes :: Generic ComplianceTypes _
instance showComplianceTypes :: Show ComplianceTypes where show = genericShow
instance decodeComplianceTypes :: Decode ComplianceTypes where decode = genericDecode options
instance encodeComplianceTypes :: Encode ComplianceTypes where encode = genericEncode options



-- | <p>Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.</p>
newtype ConfigExportDeliveryInfo = ConfigExportDeliveryInfo 
  { "lastStatus" :: NullOrUndefined (DeliveryStatus)
  , "lastErrorCode" :: NullOrUndefined (String)
  , "lastErrorMessage" :: NullOrUndefined (String)
  , "lastAttemptTime" :: NullOrUndefined (Date)
  , "lastSuccessfulTime" :: NullOrUndefined (Date)
  , "nextDeliveryTime" :: NullOrUndefined (Date)
  }
derive instance newtypeConfigExportDeliveryInfo :: Newtype ConfigExportDeliveryInfo _
derive instance repGenericConfigExportDeliveryInfo :: Generic ConfigExportDeliveryInfo _
instance showConfigExportDeliveryInfo :: Show ConfigExportDeliveryInfo where show = genericShow
instance decodeConfigExportDeliveryInfo :: Decode ConfigExportDeliveryInfo where decode = genericDecode options
instance encodeConfigExportDeliveryInfo :: Encode ConfigExportDeliveryInfo where encode = genericEncode options

-- | Constructs ConfigExportDeliveryInfo from required parameters
newConfigExportDeliveryInfo :: ConfigExportDeliveryInfo
newConfigExportDeliveryInfo  = ConfigExportDeliveryInfo { "lastAttemptTime": (NullOrUndefined Nothing), "lastErrorCode": (NullOrUndefined Nothing), "lastErrorMessage": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "lastSuccessfulTime": (NullOrUndefined Nothing), "nextDeliveryTime": (NullOrUndefined Nothing) }

-- | Constructs ConfigExportDeliveryInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigExportDeliveryInfo' :: ( { "lastStatus" :: NullOrUndefined (DeliveryStatus) , "lastErrorCode" :: NullOrUndefined (String) , "lastErrorMessage" :: NullOrUndefined (String) , "lastAttemptTime" :: NullOrUndefined (Date) , "lastSuccessfulTime" :: NullOrUndefined (Date) , "nextDeliveryTime" :: NullOrUndefined (Date) } -> {"lastStatus" :: NullOrUndefined (DeliveryStatus) , "lastErrorCode" :: NullOrUndefined (String) , "lastErrorMessage" :: NullOrUndefined (String) , "lastAttemptTime" :: NullOrUndefined (Date) , "lastSuccessfulTime" :: NullOrUndefined (Date) , "nextDeliveryTime" :: NullOrUndefined (Date) } ) -> ConfigExportDeliveryInfo
newConfigExportDeliveryInfo'  customize = (ConfigExportDeliveryInfo <<< customize) { "lastAttemptTime": (NullOrUndefined Nothing), "lastErrorCode": (NullOrUndefined Nothing), "lastErrorMessage": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "lastSuccessfulTime": (NullOrUndefined Nothing), "nextDeliveryTime": (NullOrUndefined Nothing) }



-- | <p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>
newtype ConfigRule = ConfigRule 
  { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64)
  , "ConfigRuleArn" :: NullOrUndefined (String)
  , "ConfigRuleId" :: NullOrUndefined (String)
  , "Description" :: NullOrUndefined (EmptiableStringWithCharLimit256)
  , "Scope" :: NullOrUndefined (Scope)
  , "Source" :: (Source)
  , "InputParameters" :: NullOrUndefined (StringWithCharLimit1024)
  , "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency)
  , "ConfigRuleState" :: NullOrUndefined (ConfigRuleState)
  }
derive instance newtypeConfigRule :: Newtype ConfigRule _
derive instance repGenericConfigRule :: Generic ConfigRule _
instance showConfigRule :: Show ConfigRule where show = genericShow
instance decodeConfigRule :: Decode ConfigRule where decode = genericDecode options
instance encodeConfigRule :: Encode ConfigRule where encode = genericEncode options

-- | Constructs ConfigRule from required parameters
newConfigRule :: Source -> ConfigRule
newConfigRule _Source = ConfigRule { "Source": _Source, "ConfigRuleArn": (NullOrUndefined Nothing), "ConfigRuleId": (NullOrUndefined Nothing), "ConfigRuleName": (NullOrUndefined Nothing), "ConfigRuleState": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "InputParameters": (NullOrUndefined Nothing), "MaximumExecutionFrequency": (NullOrUndefined Nothing), "Scope": (NullOrUndefined Nothing) }

-- | Constructs ConfigRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigRule' :: Source -> ( { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "ConfigRuleArn" :: NullOrUndefined (String) , "ConfigRuleId" :: NullOrUndefined (String) , "Description" :: NullOrUndefined (EmptiableStringWithCharLimit256) , "Scope" :: NullOrUndefined (Scope) , "Source" :: (Source) , "InputParameters" :: NullOrUndefined (StringWithCharLimit1024) , "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) , "ConfigRuleState" :: NullOrUndefined (ConfigRuleState) } -> {"ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "ConfigRuleArn" :: NullOrUndefined (String) , "ConfigRuleId" :: NullOrUndefined (String) , "Description" :: NullOrUndefined (EmptiableStringWithCharLimit256) , "Scope" :: NullOrUndefined (Scope) , "Source" :: (Source) , "InputParameters" :: NullOrUndefined (StringWithCharLimit1024) , "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) , "ConfigRuleState" :: NullOrUndefined (ConfigRuleState) } ) -> ConfigRule
newConfigRule' _Source customize = (ConfigRule <<< customize) { "Source": _Source, "ConfigRuleArn": (NullOrUndefined Nothing), "ConfigRuleId": (NullOrUndefined Nothing), "ConfigRuleName": (NullOrUndefined Nothing), "ConfigRuleState": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "InputParameters": (NullOrUndefined Nothing), "MaximumExecutionFrequency": (NullOrUndefined Nothing), "Scope": (NullOrUndefined Nothing) }



-- | <p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom Config rules.</p>
newtype ConfigRuleEvaluationStatus = ConfigRuleEvaluationStatus 
  { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64)
  , "ConfigRuleArn" :: NullOrUndefined (String)
  , "ConfigRuleId" :: NullOrUndefined (String)
  , "LastSuccessfulInvocationTime" :: NullOrUndefined (Date)
  , "LastFailedInvocationTime" :: NullOrUndefined (Date)
  , "LastSuccessfulEvaluationTime" :: NullOrUndefined (Date)
  , "LastFailedEvaluationTime" :: NullOrUndefined (Date)
  , "FirstActivatedTime" :: NullOrUndefined (Date)
  , "LastErrorCode" :: NullOrUndefined (String)
  , "LastErrorMessage" :: NullOrUndefined (String)
  , "FirstEvaluationStarted" :: NullOrUndefined (Boolean)
  }
derive instance newtypeConfigRuleEvaluationStatus :: Newtype ConfigRuleEvaluationStatus _
derive instance repGenericConfigRuleEvaluationStatus :: Generic ConfigRuleEvaluationStatus _
instance showConfigRuleEvaluationStatus :: Show ConfigRuleEvaluationStatus where show = genericShow
instance decodeConfigRuleEvaluationStatus :: Decode ConfigRuleEvaluationStatus where decode = genericDecode options
instance encodeConfigRuleEvaluationStatus :: Encode ConfigRuleEvaluationStatus where encode = genericEncode options

-- | Constructs ConfigRuleEvaluationStatus from required parameters
newConfigRuleEvaluationStatus :: ConfigRuleEvaluationStatus
newConfigRuleEvaluationStatus  = ConfigRuleEvaluationStatus { "ConfigRuleArn": (NullOrUndefined Nothing), "ConfigRuleId": (NullOrUndefined Nothing), "ConfigRuleName": (NullOrUndefined Nothing), "FirstActivatedTime": (NullOrUndefined Nothing), "FirstEvaluationStarted": (NullOrUndefined Nothing), "LastErrorCode": (NullOrUndefined Nothing), "LastErrorMessage": (NullOrUndefined Nothing), "LastFailedEvaluationTime": (NullOrUndefined Nothing), "LastFailedInvocationTime": (NullOrUndefined Nothing), "LastSuccessfulEvaluationTime": (NullOrUndefined Nothing), "LastSuccessfulInvocationTime": (NullOrUndefined Nothing) }

-- | Constructs ConfigRuleEvaluationStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigRuleEvaluationStatus' :: ( { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "ConfigRuleArn" :: NullOrUndefined (String) , "ConfigRuleId" :: NullOrUndefined (String) , "LastSuccessfulInvocationTime" :: NullOrUndefined (Date) , "LastFailedInvocationTime" :: NullOrUndefined (Date) , "LastSuccessfulEvaluationTime" :: NullOrUndefined (Date) , "LastFailedEvaluationTime" :: NullOrUndefined (Date) , "FirstActivatedTime" :: NullOrUndefined (Date) , "LastErrorCode" :: NullOrUndefined (String) , "LastErrorMessage" :: NullOrUndefined (String) , "FirstEvaluationStarted" :: NullOrUndefined (Boolean) } -> {"ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "ConfigRuleArn" :: NullOrUndefined (String) , "ConfigRuleId" :: NullOrUndefined (String) , "LastSuccessfulInvocationTime" :: NullOrUndefined (Date) , "LastFailedInvocationTime" :: NullOrUndefined (Date) , "LastSuccessfulEvaluationTime" :: NullOrUndefined (Date) , "LastFailedEvaluationTime" :: NullOrUndefined (Date) , "FirstActivatedTime" :: NullOrUndefined (Date) , "LastErrorCode" :: NullOrUndefined (String) , "LastErrorMessage" :: NullOrUndefined (String) , "FirstEvaluationStarted" :: NullOrUndefined (Boolean) } ) -> ConfigRuleEvaluationStatus
newConfigRuleEvaluationStatus'  customize = (ConfigRuleEvaluationStatus <<< customize) { "ConfigRuleArn": (NullOrUndefined Nothing), "ConfigRuleId": (NullOrUndefined Nothing), "ConfigRuleName": (NullOrUndefined Nothing), "FirstActivatedTime": (NullOrUndefined Nothing), "FirstEvaluationStarted": (NullOrUndefined Nothing), "LastErrorCode": (NullOrUndefined Nothing), "LastErrorMessage": (NullOrUndefined Nothing), "LastFailedEvaluationTime": (NullOrUndefined Nothing), "LastFailedInvocationTime": (NullOrUndefined Nothing), "LastSuccessfulEvaluationTime": (NullOrUndefined Nothing), "LastSuccessfulInvocationTime": (NullOrUndefined Nothing) }



newtype ConfigRuleEvaluationStatusList = ConfigRuleEvaluationStatusList (Array ConfigRuleEvaluationStatus)
derive instance newtypeConfigRuleEvaluationStatusList :: Newtype ConfigRuleEvaluationStatusList _
derive instance repGenericConfigRuleEvaluationStatusList :: Generic ConfigRuleEvaluationStatusList _
instance showConfigRuleEvaluationStatusList :: Show ConfigRuleEvaluationStatusList where show = genericShow
instance decodeConfigRuleEvaluationStatusList :: Decode ConfigRuleEvaluationStatusList where decode = genericDecode options
instance encodeConfigRuleEvaluationStatusList :: Encode ConfigRuleEvaluationStatusList where encode = genericEncode options



newtype ConfigRuleNames = ConfigRuleNames (Array StringWithCharLimit64)
derive instance newtypeConfigRuleNames :: Newtype ConfigRuleNames _
derive instance repGenericConfigRuleNames :: Generic ConfigRuleNames _
instance showConfigRuleNames :: Show ConfigRuleNames where show = genericShow
instance decodeConfigRuleNames :: Decode ConfigRuleNames where decode = genericDecode options
instance encodeConfigRuleNames :: Encode ConfigRuleNames where encode = genericEncode options



newtype ConfigRuleState = ConfigRuleState String
derive instance newtypeConfigRuleState :: Newtype ConfigRuleState _
derive instance repGenericConfigRuleState :: Generic ConfigRuleState _
instance showConfigRuleState :: Show ConfigRuleState where show = genericShow
instance decodeConfigRuleState :: Decode ConfigRuleState where decode = genericDecode options
instance encodeConfigRuleState :: Encode ConfigRuleState where encode = genericEncode options



newtype ConfigRules = ConfigRules (Array ConfigRule)
derive instance newtypeConfigRules :: Newtype ConfigRules _
derive instance repGenericConfigRules :: Generic ConfigRules _
instance showConfigRules :: Show ConfigRules where show = genericShow
instance decodeConfigRules :: Decode ConfigRules where decode = genericDecode options
instance encodeConfigRules :: Encode ConfigRules where encode = genericEncode options



-- | <p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <note> <p>If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:</p> </note> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>
newtype ConfigSnapshotDeliveryProperties = ConfigSnapshotDeliveryProperties 
  { "deliveryFrequency" :: NullOrUndefined (MaximumExecutionFrequency)
  }
derive instance newtypeConfigSnapshotDeliveryProperties :: Newtype ConfigSnapshotDeliveryProperties _
derive instance repGenericConfigSnapshotDeliveryProperties :: Generic ConfigSnapshotDeliveryProperties _
instance showConfigSnapshotDeliveryProperties :: Show ConfigSnapshotDeliveryProperties where show = genericShow
instance decodeConfigSnapshotDeliveryProperties :: Decode ConfigSnapshotDeliveryProperties where decode = genericDecode options
instance encodeConfigSnapshotDeliveryProperties :: Encode ConfigSnapshotDeliveryProperties where encode = genericEncode options

-- | Constructs ConfigSnapshotDeliveryProperties from required parameters
newConfigSnapshotDeliveryProperties :: ConfigSnapshotDeliveryProperties
newConfigSnapshotDeliveryProperties  = ConfigSnapshotDeliveryProperties { "deliveryFrequency": (NullOrUndefined Nothing) }

-- | Constructs ConfigSnapshotDeliveryProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigSnapshotDeliveryProperties' :: ( { "deliveryFrequency" :: NullOrUndefined (MaximumExecutionFrequency) } -> {"deliveryFrequency" :: NullOrUndefined (MaximumExecutionFrequency) } ) -> ConfigSnapshotDeliveryProperties
newConfigSnapshotDeliveryProperties'  customize = (ConfigSnapshotDeliveryProperties <<< customize) { "deliveryFrequency": (NullOrUndefined Nothing) }



-- | <p>A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.</p>
newtype ConfigStreamDeliveryInfo = ConfigStreamDeliveryInfo 
  { "lastStatus" :: NullOrUndefined (DeliveryStatus)
  , "lastErrorCode" :: NullOrUndefined (String)
  , "lastErrorMessage" :: NullOrUndefined (String)
  , "lastStatusChangeTime" :: NullOrUndefined (Date)
  }
derive instance newtypeConfigStreamDeliveryInfo :: Newtype ConfigStreamDeliveryInfo _
derive instance repGenericConfigStreamDeliveryInfo :: Generic ConfigStreamDeliveryInfo _
instance showConfigStreamDeliveryInfo :: Show ConfigStreamDeliveryInfo where show = genericShow
instance decodeConfigStreamDeliveryInfo :: Decode ConfigStreamDeliveryInfo where decode = genericDecode options
instance encodeConfigStreamDeliveryInfo :: Encode ConfigStreamDeliveryInfo where encode = genericEncode options

-- | Constructs ConfigStreamDeliveryInfo from required parameters
newConfigStreamDeliveryInfo :: ConfigStreamDeliveryInfo
newConfigStreamDeliveryInfo  = ConfigStreamDeliveryInfo { "lastErrorCode": (NullOrUndefined Nothing), "lastErrorMessage": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "lastStatusChangeTime": (NullOrUndefined Nothing) }

-- | Constructs ConfigStreamDeliveryInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigStreamDeliveryInfo' :: ( { "lastStatus" :: NullOrUndefined (DeliveryStatus) , "lastErrorCode" :: NullOrUndefined (String) , "lastErrorMessage" :: NullOrUndefined (String) , "lastStatusChangeTime" :: NullOrUndefined (Date) } -> {"lastStatus" :: NullOrUndefined (DeliveryStatus) , "lastErrorCode" :: NullOrUndefined (String) , "lastErrorMessage" :: NullOrUndefined (String) , "lastStatusChangeTime" :: NullOrUndefined (Date) } ) -> ConfigStreamDeliveryInfo
newConfigStreamDeliveryInfo'  customize = (ConfigStreamDeliveryInfo <<< customize) { "lastErrorCode": (NullOrUndefined Nothing), "lastErrorMessage": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "lastStatusChangeTime": (NullOrUndefined Nothing) }



newtype Configuration = Configuration String
derive instance newtypeConfiguration :: Newtype Configuration _
derive instance repGenericConfiguration :: Generic Configuration _
instance showConfiguration :: Show Configuration where show = genericShow
instance decodeConfiguration :: Decode Configuration where decode = genericDecode options
instance encodeConfiguration :: Encode Configuration where encode = genericEncode options



-- | <p>A list that contains detailed configurations of a specified resource.</p>
newtype ConfigurationItem = ConfigurationItem 
  { "version" :: NullOrUndefined (Version)
  , "accountId" :: NullOrUndefined (AccountId)
  , "configurationItemCaptureTime" :: NullOrUndefined (ConfigurationItemCaptureTime)
  , "configurationItemStatus" :: NullOrUndefined (ConfigurationItemStatus)
  , "configurationStateId" :: NullOrUndefined (ConfigurationStateId)
  , "configurationItemMD5Hash" :: NullOrUndefined (ConfigurationItemMD5Hash)
  , "arn" :: NullOrUndefined (ARN)
  , "resourceType" :: NullOrUndefined (ResourceType)
  , "resourceId" :: NullOrUndefined (ResourceId)
  , "resourceName" :: NullOrUndefined (ResourceName)
  , "awsRegion" :: NullOrUndefined (AwsRegion)
  , "availabilityZone" :: NullOrUndefined (AvailabilityZone)
  , "resourceCreationTime" :: NullOrUndefined (ResourceCreationTime)
  , "tags" :: NullOrUndefined (Tags)
  , "relatedEvents" :: NullOrUndefined (RelatedEventList)
  , "relationships" :: NullOrUndefined (RelationshipList)
  , "configuration" :: NullOrUndefined (Configuration)
  , "supplementaryConfiguration" :: NullOrUndefined (SupplementaryConfiguration)
  }
derive instance newtypeConfigurationItem :: Newtype ConfigurationItem _
derive instance repGenericConfigurationItem :: Generic ConfigurationItem _
instance showConfigurationItem :: Show ConfigurationItem where show = genericShow
instance decodeConfigurationItem :: Decode ConfigurationItem where decode = genericDecode options
instance encodeConfigurationItem :: Encode ConfigurationItem where encode = genericEncode options

-- | Constructs ConfigurationItem from required parameters
newConfigurationItem :: ConfigurationItem
newConfigurationItem  = ConfigurationItem { "accountId": (NullOrUndefined Nothing), "arn": (NullOrUndefined Nothing), "availabilityZone": (NullOrUndefined Nothing), "awsRegion": (NullOrUndefined Nothing), "configuration": (NullOrUndefined Nothing), "configurationItemCaptureTime": (NullOrUndefined Nothing), "configurationItemMD5Hash": (NullOrUndefined Nothing), "configurationItemStatus": (NullOrUndefined Nothing), "configurationStateId": (NullOrUndefined Nothing), "relatedEvents": (NullOrUndefined Nothing), "relationships": (NullOrUndefined Nothing), "resourceCreationTime": (NullOrUndefined Nothing), "resourceId": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing), "supplementaryConfiguration": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationItem' :: ( { "version" :: NullOrUndefined (Version) , "accountId" :: NullOrUndefined (AccountId) , "configurationItemCaptureTime" :: NullOrUndefined (ConfigurationItemCaptureTime) , "configurationItemStatus" :: NullOrUndefined (ConfigurationItemStatus) , "configurationStateId" :: NullOrUndefined (ConfigurationStateId) , "configurationItemMD5Hash" :: NullOrUndefined (ConfigurationItemMD5Hash) , "arn" :: NullOrUndefined (ARN) , "resourceType" :: NullOrUndefined (ResourceType) , "resourceId" :: NullOrUndefined (ResourceId) , "resourceName" :: NullOrUndefined (ResourceName) , "awsRegion" :: NullOrUndefined (AwsRegion) , "availabilityZone" :: NullOrUndefined (AvailabilityZone) , "resourceCreationTime" :: NullOrUndefined (ResourceCreationTime) , "tags" :: NullOrUndefined (Tags) , "relatedEvents" :: NullOrUndefined (RelatedEventList) , "relationships" :: NullOrUndefined (RelationshipList) , "configuration" :: NullOrUndefined (Configuration) , "supplementaryConfiguration" :: NullOrUndefined (SupplementaryConfiguration) } -> {"version" :: NullOrUndefined (Version) , "accountId" :: NullOrUndefined (AccountId) , "configurationItemCaptureTime" :: NullOrUndefined (ConfigurationItemCaptureTime) , "configurationItemStatus" :: NullOrUndefined (ConfigurationItemStatus) , "configurationStateId" :: NullOrUndefined (ConfigurationStateId) , "configurationItemMD5Hash" :: NullOrUndefined (ConfigurationItemMD5Hash) , "arn" :: NullOrUndefined (ARN) , "resourceType" :: NullOrUndefined (ResourceType) , "resourceId" :: NullOrUndefined (ResourceId) , "resourceName" :: NullOrUndefined (ResourceName) , "awsRegion" :: NullOrUndefined (AwsRegion) , "availabilityZone" :: NullOrUndefined (AvailabilityZone) , "resourceCreationTime" :: NullOrUndefined (ResourceCreationTime) , "tags" :: NullOrUndefined (Tags) , "relatedEvents" :: NullOrUndefined (RelatedEventList) , "relationships" :: NullOrUndefined (RelationshipList) , "configuration" :: NullOrUndefined (Configuration) , "supplementaryConfiguration" :: NullOrUndefined (SupplementaryConfiguration) } ) -> ConfigurationItem
newConfigurationItem'  customize = (ConfigurationItem <<< customize) { "accountId": (NullOrUndefined Nothing), "arn": (NullOrUndefined Nothing), "availabilityZone": (NullOrUndefined Nothing), "awsRegion": (NullOrUndefined Nothing), "configuration": (NullOrUndefined Nothing), "configurationItemCaptureTime": (NullOrUndefined Nothing), "configurationItemMD5Hash": (NullOrUndefined Nothing), "configurationItemStatus": (NullOrUndefined Nothing), "configurationStateId": (NullOrUndefined Nothing), "relatedEvents": (NullOrUndefined Nothing), "relationships": (NullOrUndefined Nothing), "resourceCreationTime": (NullOrUndefined Nothing), "resourceId": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing), "supplementaryConfiguration": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing) }



newtype ConfigurationItemCaptureTime = ConfigurationItemCaptureTime Types.Timestamp
derive instance newtypeConfigurationItemCaptureTime :: Newtype ConfigurationItemCaptureTime _
derive instance repGenericConfigurationItemCaptureTime :: Generic ConfigurationItemCaptureTime _
instance showConfigurationItemCaptureTime :: Show ConfigurationItemCaptureTime where show = genericShow
instance decodeConfigurationItemCaptureTime :: Decode ConfigurationItemCaptureTime where decode = genericDecode options
instance encodeConfigurationItemCaptureTime :: Encode ConfigurationItemCaptureTime where encode = genericEncode options



newtype ConfigurationItemList = ConfigurationItemList (Array ConfigurationItem)
derive instance newtypeConfigurationItemList :: Newtype ConfigurationItemList _
derive instance repGenericConfigurationItemList :: Generic ConfigurationItemList _
instance showConfigurationItemList :: Show ConfigurationItemList where show = genericShow
instance decodeConfigurationItemList :: Decode ConfigurationItemList where decode = genericDecode options
instance encodeConfigurationItemList :: Encode ConfigurationItemList where encode = genericEncode options



newtype ConfigurationItemMD5Hash = ConfigurationItemMD5Hash String
derive instance newtypeConfigurationItemMD5Hash :: Newtype ConfigurationItemMD5Hash _
derive instance repGenericConfigurationItemMD5Hash :: Generic ConfigurationItemMD5Hash _
instance showConfigurationItemMD5Hash :: Show ConfigurationItemMD5Hash where show = genericShow
instance decodeConfigurationItemMD5Hash :: Decode ConfigurationItemMD5Hash where decode = genericDecode options
instance encodeConfigurationItemMD5Hash :: Encode ConfigurationItemMD5Hash where encode = genericEncode options



newtype ConfigurationItemStatus = ConfigurationItemStatus String
derive instance newtypeConfigurationItemStatus :: Newtype ConfigurationItemStatus _
derive instance repGenericConfigurationItemStatus :: Generic ConfigurationItemStatus _
instance showConfigurationItemStatus :: Show ConfigurationItemStatus where show = genericShow
instance decodeConfigurationItemStatus :: Decode ConfigurationItemStatus where decode = genericDecode options
instance encodeConfigurationItemStatus :: Encode ConfigurationItemStatus where encode = genericEncode options



-- | <p>An object that represents the recording of configuration changes of an AWS resource.</p>
newtype ConfigurationRecorder = ConfigurationRecorder 
  { "name" :: NullOrUndefined (RecorderName)
  , "roleARN" :: NullOrUndefined (String)
  , "recordingGroup" :: NullOrUndefined (RecordingGroup)
  }
derive instance newtypeConfigurationRecorder :: Newtype ConfigurationRecorder _
derive instance repGenericConfigurationRecorder :: Generic ConfigurationRecorder _
instance showConfigurationRecorder :: Show ConfigurationRecorder where show = genericShow
instance decodeConfigurationRecorder :: Decode ConfigurationRecorder where decode = genericDecode options
instance encodeConfigurationRecorder :: Encode ConfigurationRecorder where encode = genericEncode options

-- | Constructs ConfigurationRecorder from required parameters
newConfigurationRecorder :: ConfigurationRecorder
newConfigurationRecorder  = ConfigurationRecorder { "name": (NullOrUndefined Nothing), "recordingGroup": (NullOrUndefined Nothing), "roleARN": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationRecorder's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationRecorder' :: ( { "name" :: NullOrUndefined (RecorderName) , "roleARN" :: NullOrUndefined (String) , "recordingGroup" :: NullOrUndefined (RecordingGroup) } -> {"name" :: NullOrUndefined (RecorderName) , "roleARN" :: NullOrUndefined (String) , "recordingGroup" :: NullOrUndefined (RecordingGroup) } ) -> ConfigurationRecorder
newConfigurationRecorder'  customize = (ConfigurationRecorder <<< customize) { "name": (NullOrUndefined Nothing), "recordingGroup": (NullOrUndefined Nothing), "roleARN": (NullOrUndefined Nothing) }



newtype ConfigurationRecorderList = ConfigurationRecorderList (Array ConfigurationRecorder)
derive instance newtypeConfigurationRecorderList :: Newtype ConfigurationRecorderList _
derive instance repGenericConfigurationRecorderList :: Generic ConfigurationRecorderList _
instance showConfigurationRecorderList :: Show ConfigurationRecorderList where show = genericShow
instance decodeConfigurationRecorderList :: Decode ConfigurationRecorderList where decode = genericDecode options
instance encodeConfigurationRecorderList :: Encode ConfigurationRecorderList where encode = genericEncode options



newtype ConfigurationRecorderNameList = ConfigurationRecorderNameList (Array RecorderName)
derive instance newtypeConfigurationRecorderNameList :: Newtype ConfigurationRecorderNameList _
derive instance repGenericConfigurationRecorderNameList :: Generic ConfigurationRecorderNameList _
instance showConfigurationRecorderNameList :: Show ConfigurationRecorderNameList where show = genericShow
instance decodeConfigurationRecorderNameList :: Decode ConfigurationRecorderNameList where decode = genericDecode options
instance encodeConfigurationRecorderNameList :: Encode ConfigurationRecorderNameList where encode = genericEncode options



-- | <p>The current status of the configuration recorder.</p>
newtype ConfigurationRecorderStatus = ConfigurationRecorderStatus 
  { "name" :: NullOrUndefined (String)
  , "lastStartTime" :: NullOrUndefined (Date)
  , "lastStopTime" :: NullOrUndefined (Date)
  , "recording" :: NullOrUndefined (Boolean)
  , "lastStatus" :: NullOrUndefined (RecorderStatus)
  , "lastErrorCode" :: NullOrUndefined (String)
  , "lastErrorMessage" :: NullOrUndefined (String)
  , "lastStatusChangeTime" :: NullOrUndefined (Date)
  }
derive instance newtypeConfigurationRecorderStatus :: Newtype ConfigurationRecorderStatus _
derive instance repGenericConfigurationRecorderStatus :: Generic ConfigurationRecorderStatus _
instance showConfigurationRecorderStatus :: Show ConfigurationRecorderStatus where show = genericShow
instance decodeConfigurationRecorderStatus :: Decode ConfigurationRecorderStatus where decode = genericDecode options
instance encodeConfigurationRecorderStatus :: Encode ConfigurationRecorderStatus where encode = genericEncode options

-- | Constructs ConfigurationRecorderStatus from required parameters
newConfigurationRecorderStatus :: ConfigurationRecorderStatus
newConfigurationRecorderStatus  = ConfigurationRecorderStatus { "lastErrorCode": (NullOrUndefined Nothing), "lastErrorMessage": (NullOrUndefined Nothing), "lastStartTime": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "lastStatusChangeTime": (NullOrUndefined Nothing), "lastStopTime": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "recording": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationRecorderStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationRecorderStatus' :: ( { "name" :: NullOrUndefined (String) , "lastStartTime" :: NullOrUndefined (Date) , "lastStopTime" :: NullOrUndefined (Date) , "recording" :: NullOrUndefined (Boolean) , "lastStatus" :: NullOrUndefined (RecorderStatus) , "lastErrorCode" :: NullOrUndefined (String) , "lastErrorMessage" :: NullOrUndefined (String) , "lastStatusChangeTime" :: NullOrUndefined (Date) } -> {"name" :: NullOrUndefined (String) , "lastStartTime" :: NullOrUndefined (Date) , "lastStopTime" :: NullOrUndefined (Date) , "recording" :: NullOrUndefined (Boolean) , "lastStatus" :: NullOrUndefined (RecorderStatus) , "lastErrorCode" :: NullOrUndefined (String) , "lastErrorMessage" :: NullOrUndefined (String) , "lastStatusChangeTime" :: NullOrUndefined (Date) } ) -> ConfigurationRecorderStatus
newConfigurationRecorderStatus'  customize = (ConfigurationRecorderStatus <<< customize) { "lastErrorCode": (NullOrUndefined Nothing), "lastErrorMessage": (NullOrUndefined Nothing), "lastStartTime": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "lastStatusChangeTime": (NullOrUndefined Nothing), "lastStopTime": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "recording": (NullOrUndefined Nothing) }



newtype ConfigurationRecorderStatusList = ConfigurationRecorderStatusList (Array ConfigurationRecorderStatus)
derive instance newtypeConfigurationRecorderStatusList :: Newtype ConfigurationRecorderStatusList _
derive instance repGenericConfigurationRecorderStatusList :: Generic ConfigurationRecorderStatusList _
instance showConfigurationRecorderStatusList :: Show ConfigurationRecorderStatusList where show = genericShow
instance decodeConfigurationRecorderStatusList :: Decode ConfigurationRecorderStatusList where decode = genericDecode options
instance encodeConfigurationRecorderStatusList :: Encode ConfigurationRecorderStatusList where encode = genericEncode options



newtype ConfigurationStateId = ConfigurationStateId String
derive instance newtypeConfigurationStateId :: Newtype ConfigurationStateId _
derive instance repGenericConfigurationStateId :: Generic ConfigurationStateId _
instance showConfigurationStateId :: Show ConfigurationStateId where show = genericShow
instance decodeConfigurationStateId :: Decode ConfigurationStateId where decode = genericDecode options
instance encodeConfigurationStateId :: Encode ConfigurationStateId where encode = genericEncode options



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where show = genericShow
instance decodeDate :: Decode Date where decode = genericDecode options
instance encodeDate :: Encode Date where encode = genericEncode options



-- | <p/>
newtype DeleteConfigRuleRequest = DeleteConfigRuleRequest 
  { "ConfigRuleName" :: (StringWithCharLimit64)
  }
derive instance newtypeDeleteConfigRuleRequest :: Newtype DeleteConfigRuleRequest _
derive instance repGenericDeleteConfigRuleRequest :: Generic DeleteConfigRuleRequest _
instance showDeleteConfigRuleRequest :: Show DeleteConfigRuleRequest where show = genericShow
instance decodeDeleteConfigRuleRequest :: Decode DeleteConfigRuleRequest where decode = genericDecode options
instance encodeDeleteConfigRuleRequest :: Encode DeleteConfigRuleRequest where encode = genericEncode options

-- | Constructs DeleteConfigRuleRequest from required parameters
newDeleteConfigRuleRequest :: StringWithCharLimit64 -> DeleteConfigRuleRequest
newDeleteConfigRuleRequest _ConfigRuleName = DeleteConfigRuleRequest { "ConfigRuleName": _ConfigRuleName }

-- | Constructs DeleteConfigRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConfigRuleRequest' :: StringWithCharLimit64 -> ( { "ConfigRuleName" :: (StringWithCharLimit64) } -> {"ConfigRuleName" :: (StringWithCharLimit64) } ) -> DeleteConfigRuleRequest
newDeleteConfigRuleRequest' _ConfigRuleName customize = (DeleteConfigRuleRequest <<< customize) { "ConfigRuleName": _ConfigRuleName }



-- | <p>The request object for the <code>DeleteConfigurationRecorder</code> action.</p>
newtype DeleteConfigurationRecorderRequest = DeleteConfigurationRecorderRequest 
  { "ConfigurationRecorderName" :: (RecorderName)
  }
derive instance newtypeDeleteConfigurationRecorderRequest :: Newtype DeleteConfigurationRecorderRequest _
derive instance repGenericDeleteConfigurationRecorderRequest :: Generic DeleteConfigurationRecorderRequest _
instance showDeleteConfigurationRecorderRequest :: Show DeleteConfigurationRecorderRequest where show = genericShow
instance decodeDeleteConfigurationRecorderRequest :: Decode DeleteConfigurationRecorderRequest where decode = genericDecode options
instance encodeDeleteConfigurationRecorderRequest :: Encode DeleteConfigurationRecorderRequest where encode = genericEncode options

-- | Constructs DeleteConfigurationRecorderRequest from required parameters
newDeleteConfigurationRecorderRequest :: RecorderName -> DeleteConfigurationRecorderRequest
newDeleteConfigurationRecorderRequest _ConfigurationRecorderName = DeleteConfigurationRecorderRequest { "ConfigurationRecorderName": _ConfigurationRecorderName }

-- | Constructs DeleteConfigurationRecorderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConfigurationRecorderRequest' :: RecorderName -> ( { "ConfigurationRecorderName" :: (RecorderName) } -> {"ConfigurationRecorderName" :: (RecorderName) } ) -> DeleteConfigurationRecorderRequest
newDeleteConfigurationRecorderRequest' _ConfigurationRecorderName customize = (DeleteConfigurationRecorderRequest <<< customize) { "ConfigurationRecorderName": _ConfigurationRecorderName }



-- | <p>The input for the <a>DeleteDeliveryChannel</a> action. The action accepts the following data in JSON format. </p>
newtype DeleteDeliveryChannelRequest = DeleteDeliveryChannelRequest 
  { "DeliveryChannelName" :: (ChannelName)
  }
derive instance newtypeDeleteDeliveryChannelRequest :: Newtype DeleteDeliveryChannelRequest _
derive instance repGenericDeleteDeliveryChannelRequest :: Generic DeleteDeliveryChannelRequest _
instance showDeleteDeliveryChannelRequest :: Show DeleteDeliveryChannelRequest where show = genericShow
instance decodeDeleteDeliveryChannelRequest :: Decode DeleteDeliveryChannelRequest where decode = genericDecode options
instance encodeDeleteDeliveryChannelRequest :: Encode DeleteDeliveryChannelRequest where encode = genericEncode options

-- | Constructs DeleteDeliveryChannelRequest from required parameters
newDeleteDeliveryChannelRequest :: ChannelName -> DeleteDeliveryChannelRequest
newDeleteDeliveryChannelRequest _DeliveryChannelName = DeleteDeliveryChannelRequest { "DeliveryChannelName": _DeliveryChannelName }

-- | Constructs DeleteDeliveryChannelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDeliveryChannelRequest' :: ChannelName -> ( { "DeliveryChannelName" :: (ChannelName) } -> {"DeliveryChannelName" :: (ChannelName) } ) -> DeleteDeliveryChannelRequest
newDeleteDeliveryChannelRequest' _DeliveryChannelName customize = (DeleteDeliveryChannelRequest <<< customize) { "DeliveryChannelName": _DeliveryChannelName }



-- | <p/>
newtype DeleteEvaluationResultsRequest = DeleteEvaluationResultsRequest 
  { "ConfigRuleName" :: (StringWithCharLimit64)
  }
derive instance newtypeDeleteEvaluationResultsRequest :: Newtype DeleteEvaluationResultsRequest _
derive instance repGenericDeleteEvaluationResultsRequest :: Generic DeleteEvaluationResultsRequest _
instance showDeleteEvaluationResultsRequest :: Show DeleteEvaluationResultsRequest where show = genericShow
instance decodeDeleteEvaluationResultsRequest :: Decode DeleteEvaluationResultsRequest where decode = genericDecode options
instance encodeDeleteEvaluationResultsRequest :: Encode DeleteEvaluationResultsRequest where encode = genericEncode options

-- | Constructs DeleteEvaluationResultsRequest from required parameters
newDeleteEvaluationResultsRequest :: StringWithCharLimit64 -> DeleteEvaluationResultsRequest
newDeleteEvaluationResultsRequest _ConfigRuleName = DeleteEvaluationResultsRequest { "ConfigRuleName": _ConfigRuleName }

-- | Constructs DeleteEvaluationResultsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEvaluationResultsRequest' :: StringWithCharLimit64 -> ( { "ConfigRuleName" :: (StringWithCharLimit64) } -> {"ConfigRuleName" :: (StringWithCharLimit64) } ) -> DeleteEvaluationResultsRequest
newDeleteEvaluationResultsRequest' _ConfigRuleName customize = (DeleteEvaluationResultsRequest <<< customize) { "ConfigRuleName": _ConfigRuleName }



-- | <p>The output when you delete the evaluation results for the specified Config rule.</p>
newtype DeleteEvaluationResultsResponse = DeleteEvaluationResultsResponse Types.NoArguments
derive instance newtypeDeleteEvaluationResultsResponse :: Newtype DeleteEvaluationResultsResponse _
derive instance repGenericDeleteEvaluationResultsResponse :: Generic DeleteEvaluationResultsResponse _
instance showDeleteEvaluationResultsResponse :: Show DeleteEvaluationResultsResponse where show = genericShow
instance decodeDeleteEvaluationResultsResponse :: Decode DeleteEvaluationResultsResponse where decode = genericDecode options
instance encodeDeleteEvaluationResultsResponse :: Encode DeleteEvaluationResultsResponse where encode = genericEncode options



-- | <p>The input for the <a>DeliverConfigSnapshot</a> action.</p>
newtype DeliverConfigSnapshotRequest = DeliverConfigSnapshotRequest 
  { "deliveryChannelName" :: (ChannelName)
  }
derive instance newtypeDeliverConfigSnapshotRequest :: Newtype DeliverConfigSnapshotRequest _
derive instance repGenericDeliverConfigSnapshotRequest :: Generic DeliverConfigSnapshotRequest _
instance showDeliverConfigSnapshotRequest :: Show DeliverConfigSnapshotRequest where show = genericShow
instance decodeDeliverConfigSnapshotRequest :: Decode DeliverConfigSnapshotRequest where decode = genericDecode options
instance encodeDeliverConfigSnapshotRequest :: Encode DeliverConfigSnapshotRequest where encode = genericEncode options

-- | Constructs DeliverConfigSnapshotRequest from required parameters
newDeliverConfigSnapshotRequest :: ChannelName -> DeliverConfigSnapshotRequest
newDeliverConfigSnapshotRequest _deliveryChannelName = DeliverConfigSnapshotRequest { "deliveryChannelName": _deliveryChannelName }

-- | Constructs DeliverConfigSnapshotRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeliverConfigSnapshotRequest' :: ChannelName -> ( { "deliveryChannelName" :: (ChannelName) } -> {"deliveryChannelName" :: (ChannelName) } ) -> DeliverConfigSnapshotRequest
newDeliverConfigSnapshotRequest' _deliveryChannelName customize = (DeliverConfigSnapshotRequest <<< customize) { "deliveryChannelName": _deliveryChannelName }



-- | <p>The output for the <a>DeliverConfigSnapshot</a> action in JSON format.</p>
newtype DeliverConfigSnapshotResponse = DeliverConfigSnapshotResponse 
  { "configSnapshotId" :: NullOrUndefined (String)
  }
derive instance newtypeDeliverConfigSnapshotResponse :: Newtype DeliverConfigSnapshotResponse _
derive instance repGenericDeliverConfigSnapshotResponse :: Generic DeliverConfigSnapshotResponse _
instance showDeliverConfigSnapshotResponse :: Show DeliverConfigSnapshotResponse where show = genericShow
instance decodeDeliverConfigSnapshotResponse :: Decode DeliverConfigSnapshotResponse where decode = genericDecode options
instance encodeDeliverConfigSnapshotResponse :: Encode DeliverConfigSnapshotResponse where encode = genericEncode options

-- | Constructs DeliverConfigSnapshotResponse from required parameters
newDeliverConfigSnapshotResponse :: DeliverConfigSnapshotResponse
newDeliverConfigSnapshotResponse  = DeliverConfigSnapshotResponse { "configSnapshotId": (NullOrUndefined Nothing) }

-- | Constructs DeliverConfigSnapshotResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeliverConfigSnapshotResponse' :: ( { "configSnapshotId" :: NullOrUndefined (String) } -> {"configSnapshotId" :: NullOrUndefined (String) } ) -> DeliverConfigSnapshotResponse
newDeliverConfigSnapshotResponse'  customize = (DeliverConfigSnapshotResponse <<< customize) { "configSnapshotId": (NullOrUndefined Nothing) }



-- | <p>The channel through which AWS Config delivers notifications and updated configuration states.</p>
newtype DeliveryChannel = DeliveryChannel 
  { "name" :: NullOrUndefined (ChannelName)
  , "s3BucketName" :: NullOrUndefined (String)
  , "s3KeyPrefix" :: NullOrUndefined (String)
  , "snsTopicARN" :: NullOrUndefined (String)
  , "configSnapshotDeliveryProperties" :: NullOrUndefined (ConfigSnapshotDeliveryProperties)
  }
derive instance newtypeDeliveryChannel :: Newtype DeliveryChannel _
derive instance repGenericDeliveryChannel :: Generic DeliveryChannel _
instance showDeliveryChannel :: Show DeliveryChannel where show = genericShow
instance decodeDeliveryChannel :: Decode DeliveryChannel where decode = genericDecode options
instance encodeDeliveryChannel :: Encode DeliveryChannel where encode = genericEncode options

-- | Constructs DeliveryChannel from required parameters
newDeliveryChannel :: DeliveryChannel
newDeliveryChannel  = DeliveryChannel { "configSnapshotDeliveryProperties": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "s3BucketName": (NullOrUndefined Nothing), "s3KeyPrefix": (NullOrUndefined Nothing), "snsTopicARN": (NullOrUndefined Nothing) }

-- | Constructs DeliveryChannel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeliveryChannel' :: ( { "name" :: NullOrUndefined (ChannelName) , "s3BucketName" :: NullOrUndefined (String) , "s3KeyPrefix" :: NullOrUndefined (String) , "snsTopicARN" :: NullOrUndefined (String) , "configSnapshotDeliveryProperties" :: NullOrUndefined (ConfigSnapshotDeliveryProperties) } -> {"name" :: NullOrUndefined (ChannelName) , "s3BucketName" :: NullOrUndefined (String) , "s3KeyPrefix" :: NullOrUndefined (String) , "snsTopicARN" :: NullOrUndefined (String) , "configSnapshotDeliveryProperties" :: NullOrUndefined (ConfigSnapshotDeliveryProperties) } ) -> DeliveryChannel
newDeliveryChannel'  customize = (DeliveryChannel <<< customize) { "configSnapshotDeliveryProperties": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "s3BucketName": (NullOrUndefined Nothing), "s3KeyPrefix": (NullOrUndefined Nothing), "snsTopicARN": (NullOrUndefined Nothing) }



newtype DeliveryChannelList = DeliveryChannelList (Array DeliveryChannel)
derive instance newtypeDeliveryChannelList :: Newtype DeliveryChannelList _
derive instance repGenericDeliveryChannelList :: Generic DeliveryChannelList _
instance showDeliveryChannelList :: Show DeliveryChannelList where show = genericShow
instance decodeDeliveryChannelList :: Decode DeliveryChannelList where decode = genericDecode options
instance encodeDeliveryChannelList :: Encode DeliveryChannelList where encode = genericEncode options



newtype DeliveryChannelNameList = DeliveryChannelNameList (Array ChannelName)
derive instance newtypeDeliveryChannelNameList :: Newtype DeliveryChannelNameList _
derive instance repGenericDeliveryChannelNameList :: Generic DeliveryChannelNameList _
instance showDeliveryChannelNameList :: Show DeliveryChannelNameList where show = genericShow
instance decodeDeliveryChannelNameList :: Decode DeliveryChannelNameList where decode = genericDecode options
instance encodeDeliveryChannelNameList :: Encode DeliveryChannelNameList where encode = genericEncode options



-- | <p>The status of a specified delivery channel.</p> <p>Valid values: <code>Success</code> | <code>Failure</code> </p>
newtype DeliveryChannelStatus = DeliveryChannelStatus 
  { "name" :: NullOrUndefined (String)
  , "configSnapshotDeliveryInfo" :: NullOrUndefined (ConfigExportDeliveryInfo)
  , "configHistoryDeliveryInfo" :: NullOrUndefined (ConfigExportDeliveryInfo)
  , "configStreamDeliveryInfo" :: NullOrUndefined (ConfigStreamDeliveryInfo)
  }
derive instance newtypeDeliveryChannelStatus :: Newtype DeliveryChannelStatus _
derive instance repGenericDeliveryChannelStatus :: Generic DeliveryChannelStatus _
instance showDeliveryChannelStatus :: Show DeliveryChannelStatus where show = genericShow
instance decodeDeliveryChannelStatus :: Decode DeliveryChannelStatus where decode = genericDecode options
instance encodeDeliveryChannelStatus :: Encode DeliveryChannelStatus where encode = genericEncode options

-- | Constructs DeliveryChannelStatus from required parameters
newDeliveryChannelStatus :: DeliveryChannelStatus
newDeliveryChannelStatus  = DeliveryChannelStatus { "configHistoryDeliveryInfo": (NullOrUndefined Nothing), "configSnapshotDeliveryInfo": (NullOrUndefined Nothing), "configStreamDeliveryInfo": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs DeliveryChannelStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeliveryChannelStatus' :: ( { "name" :: NullOrUndefined (String) , "configSnapshotDeliveryInfo" :: NullOrUndefined (ConfigExportDeliveryInfo) , "configHistoryDeliveryInfo" :: NullOrUndefined (ConfigExportDeliveryInfo) , "configStreamDeliveryInfo" :: NullOrUndefined (ConfigStreamDeliveryInfo) } -> {"name" :: NullOrUndefined (String) , "configSnapshotDeliveryInfo" :: NullOrUndefined (ConfigExportDeliveryInfo) , "configHistoryDeliveryInfo" :: NullOrUndefined (ConfigExportDeliveryInfo) , "configStreamDeliveryInfo" :: NullOrUndefined (ConfigStreamDeliveryInfo) } ) -> DeliveryChannelStatus
newDeliveryChannelStatus'  customize = (DeliveryChannelStatus <<< customize) { "configHistoryDeliveryInfo": (NullOrUndefined Nothing), "configSnapshotDeliveryInfo": (NullOrUndefined Nothing), "configStreamDeliveryInfo": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype DeliveryChannelStatusList = DeliveryChannelStatusList (Array DeliveryChannelStatus)
derive instance newtypeDeliveryChannelStatusList :: Newtype DeliveryChannelStatusList _
derive instance repGenericDeliveryChannelStatusList :: Generic DeliveryChannelStatusList _
instance showDeliveryChannelStatusList :: Show DeliveryChannelStatusList where show = genericShow
instance decodeDeliveryChannelStatusList :: Decode DeliveryChannelStatusList where decode = genericDecode options
instance encodeDeliveryChannelStatusList :: Encode DeliveryChannelStatusList where encode = genericEncode options



newtype DeliveryStatus = DeliveryStatus String
derive instance newtypeDeliveryStatus :: Newtype DeliveryStatus _
derive instance repGenericDeliveryStatus :: Generic DeliveryStatus _
instance showDeliveryStatus :: Show DeliveryStatus where show = genericShow
instance decodeDeliveryStatus :: Decode DeliveryStatus where decode = genericDecode options
instance encodeDeliveryStatus :: Encode DeliveryStatus where encode = genericEncode options



-- | <p/>
newtype DescribeComplianceByConfigRuleRequest = DescribeComplianceByConfigRuleRequest 
  { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames)
  , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeComplianceByConfigRuleRequest :: Newtype DescribeComplianceByConfigRuleRequest _
derive instance repGenericDescribeComplianceByConfigRuleRequest :: Generic DescribeComplianceByConfigRuleRequest _
instance showDescribeComplianceByConfigRuleRequest :: Show DescribeComplianceByConfigRuleRequest where show = genericShow
instance decodeDescribeComplianceByConfigRuleRequest :: Decode DescribeComplianceByConfigRuleRequest where decode = genericDecode options
instance encodeDescribeComplianceByConfigRuleRequest :: Encode DescribeComplianceByConfigRuleRequest where encode = genericEncode options

-- | Constructs DescribeComplianceByConfigRuleRequest from required parameters
newDescribeComplianceByConfigRuleRequest :: DescribeComplianceByConfigRuleRequest
newDescribeComplianceByConfigRuleRequest  = DescribeComplianceByConfigRuleRequest { "ComplianceTypes": (NullOrUndefined Nothing), "ConfigRuleNames": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComplianceByConfigRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComplianceByConfigRuleRequest' :: ( { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "NextToken" :: NullOrUndefined (String) } -> {"ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeComplianceByConfigRuleRequest
newDescribeComplianceByConfigRuleRequest'  customize = (DescribeComplianceByConfigRuleRequest <<< customize) { "ComplianceTypes": (NullOrUndefined Nothing), "ConfigRuleNames": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeComplianceByConfigRuleResponse = DescribeComplianceByConfigRuleResponse 
  { "ComplianceByConfigRules" :: NullOrUndefined (ComplianceByConfigRules)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeComplianceByConfigRuleResponse :: Newtype DescribeComplianceByConfigRuleResponse _
derive instance repGenericDescribeComplianceByConfigRuleResponse :: Generic DescribeComplianceByConfigRuleResponse _
instance showDescribeComplianceByConfigRuleResponse :: Show DescribeComplianceByConfigRuleResponse where show = genericShow
instance decodeDescribeComplianceByConfigRuleResponse :: Decode DescribeComplianceByConfigRuleResponse where decode = genericDecode options
instance encodeDescribeComplianceByConfigRuleResponse :: Encode DescribeComplianceByConfigRuleResponse where encode = genericEncode options

-- | Constructs DescribeComplianceByConfigRuleResponse from required parameters
newDescribeComplianceByConfigRuleResponse :: DescribeComplianceByConfigRuleResponse
newDescribeComplianceByConfigRuleResponse  = DescribeComplianceByConfigRuleResponse { "ComplianceByConfigRules": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComplianceByConfigRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComplianceByConfigRuleResponse' :: ( { "ComplianceByConfigRules" :: NullOrUndefined (ComplianceByConfigRules) , "NextToken" :: NullOrUndefined (String) } -> {"ComplianceByConfigRules" :: NullOrUndefined (ComplianceByConfigRules) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeComplianceByConfigRuleResponse
newDescribeComplianceByConfigRuleResponse'  customize = (DescribeComplianceByConfigRuleResponse <<< customize) { "ComplianceByConfigRules": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeComplianceByResourceRequest = DescribeComplianceByResourceRequest 
  { "ResourceType" :: NullOrUndefined (StringWithCharLimit256)
  , "ResourceId" :: NullOrUndefined (BaseResourceId)
  , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes)
  , "Limit" :: NullOrUndefined (Limit)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeComplianceByResourceRequest :: Newtype DescribeComplianceByResourceRequest _
derive instance repGenericDescribeComplianceByResourceRequest :: Generic DescribeComplianceByResourceRequest _
instance showDescribeComplianceByResourceRequest :: Show DescribeComplianceByResourceRequest where show = genericShow
instance decodeDescribeComplianceByResourceRequest :: Decode DescribeComplianceByResourceRequest where decode = genericDecode options
instance encodeDescribeComplianceByResourceRequest :: Encode DescribeComplianceByResourceRequest where encode = genericEncode options

-- | Constructs DescribeComplianceByResourceRequest from required parameters
newDescribeComplianceByResourceRequest :: DescribeComplianceByResourceRequest
newDescribeComplianceByResourceRequest  = DescribeComplianceByResourceRequest { "ComplianceTypes": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs DescribeComplianceByResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComplianceByResourceRequest' :: ( { "ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ResourceId" :: NullOrUndefined (BaseResourceId) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "Limit" :: NullOrUndefined (Limit) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ResourceId" :: NullOrUndefined (BaseResourceId) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "Limit" :: NullOrUndefined (Limit) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeComplianceByResourceRequest
newDescribeComplianceByResourceRequest'  customize = (DescribeComplianceByResourceRequest <<< customize) { "ComplianceTypes": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeComplianceByResourceResponse = DescribeComplianceByResourceResponse 
  { "ComplianceByResources" :: NullOrUndefined (ComplianceByResources)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeComplianceByResourceResponse :: Newtype DescribeComplianceByResourceResponse _
derive instance repGenericDescribeComplianceByResourceResponse :: Generic DescribeComplianceByResourceResponse _
instance showDescribeComplianceByResourceResponse :: Show DescribeComplianceByResourceResponse where show = genericShow
instance decodeDescribeComplianceByResourceResponse :: Decode DescribeComplianceByResourceResponse where decode = genericDecode options
instance encodeDescribeComplianceByResourceResponse :: Encode DescribeComplianceByResourceResponse where encode = genericEncode options

-- | Constructs DescribeComplianceByResourceResponse from required parameters
newDescribeComplianceByResourceResponse :: DescribeComplianceByResourceResponse
newDescribeComplianceByResourceResponse  = DescribeComplianceByResourceResponse { "ComplianceByResources": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComplianceByResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComplianceByResourceResponse' :: ( { "ComplianceByResources" :: NullOrUndefined (ComplianceByResources) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ComplianceByResources" :: NullOrUndefined (ComplianceByResources) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeComplianceByResourceResponse
newDescribeComplianceByResourceResponse'  customize = (DescribeComplianceByResourceResponse <<< customize) { "ComplianceByResources": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeConfigRuleEvaluationStatusRequest = DescribeConfigRuleEvaluationStatusRequest 
  { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames)
  , "NextToken" :: NullOrUndefined (String)
  , "Limit" :: NullOrUndefined (RuleLimit)
  }
derive instance newtypeDescribeConfigRuleEvaluationStatusRequest :: Newtype DescribeConfigRuleEvaluationStatusRequest _
derive instance repGenericDescribeConfigRuleEvaluationStatusRequest :: Generic DescribeConfigRuleEvaluationStatusRequest _
instance showDescribeConfigRuleEvaluationStatusRequest :: Show DescribeConfigRuleEvaluationStatusRequest where show = genericShow
instance decodeDescribeConfigRuleEvaluationStatusRequest :: Decode DescribeConfigRuleEvaluationStatusRequest where decode = genericDecode options
instance encodeDescribeConfigRuleEvaluationStatusRequest :: Encode DescribeConfigRuleEvaluationStatusRequest where encode = genericEncode options

-- | Constructs DescribeConfigRuleEvaluationStatusRequest from required parameters
newDescribeConfigRuleEvaluationStatusRequest :: DescribeConfigRuleEvaluationStatusRequest
newDescribeConfigRuleEvaluationStatusRequest  = DescribeConfigRuleEvaluationStatusRequest { "ConfigRuleNames": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigRuleEvaluationStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigRuleEvaluationStatusRequest' :: ( { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames) , "NextToken" :: NullOrUndefined (String) , "Limit" :: NullOrUndefined (RuleLimit) } -> {"ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames) , "NextToken" :: NullOrUndefined (String) , "Limit" :: NullOrUndefined (RuleLimit) } ) -> DescribeConfigRuleEvaluationStatusRequest
newDescribeConfigRuleEvaluationStatusRequest'  customize = (DescribeConfigRuleEvaluationStatusRequest <<< customize) { "ConfigRuleNames": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeConfigRuleEvaluationStatusResponse = DescribeConfigRuleEvaluationStatusResponse 
  { "ConfigRulesEvaluationStatus" :: NullOrUndefined (ConfigRuleEvaluationStatusList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeConfigRuleEvaluationStatusResponse :: Newtype DescribeConfigRuleEvaluationStatusResponse _
derive instance repGenericDescribeConfigRuleEvaluationStatusResponse :: Generic DescribeConfigRuleEvaluationStatusResponse _
instance showDescribeConfigRuleEvaluationStatusResponse :: Show DescribeConfigRuleEvaluationStatusResponse where show = genericShow
instance decodeDescribeConfigRuleEvaluationStatusResponse :: Decode DescribeConfigRuleEvaluationStatusResponse where decode = genericDecode options
instance encodeDescribeConfigRuleEvaluationStatusResponse :: Encode DescribeConfigRuleEvaluationStatusResponse where encode = genericEncode options

-- | Constructs DescribeConfigRuleEvaluationStatusResponse from required parameters
newDescribeConfigRuleEvaluationStatusResponse :: DescribeConfigRuleEvaluationStatusResponse
newDescribeConfigRuleEvaluationStatusResponse  = DescribeConfigRuleEvaluationStatusResponse { "ConfigRulesEvaluationStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigRuleEvaluationStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigRuleEvaluationStatusResponse' :: ( { "ConfigRulesEvaluationStatus" :: NullOrUndefined (ConfigRuleEvaluationStatusList) , "NextToken" :: NullOrUndefined (String) } -> {"ConfigRulesEvaluationStatus" :: NullOrUndefined (ConfigRuleEvaluationStatusList) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeConfigRuleEvaluationStatusResponse
newDescribeConfigRuleEvaluationStatusResponse'  customize = (DescribeConfigRuleEvaluationStatusResponse <<< customize) { "ConfigRulesEvaluationStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeConfigRulesRequest = DescribeConfigRulesRequest 
  { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeConfigRulesRequest :: Newtype DescribeConfigRulesRequest _
derive instance repGenericDescribeConfigRulesRequest :: Generic DescribeConfigRulesRequest _
instance showDescribeConfigRulesRequest :: Show DescribeConfigRulesRequest where show = genericShow
instance decodeDescribeConfigRulesRequest :: Decode DescribeConfigRulesRequest where decode = genericDecode options
instance encodeDescribeConfigRulesRequest :: Encode DescribeConfigRulesRequest where encode = genericEncode options

-- | Constructs DescribeConfigRulesRequest from required parameters
newDescribeConfigRulesRequest :: DescribeConfigRulesRequest
newDescribeConfigRulesRequest  = DescribeConfigRulesRequest { "ConfigRuleNames": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigRulesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigRulesRequest' :: ( { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames) , "NextToken" :: NullOrUndefined (String) } -> {"ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeConfigRulesRequest
newDescribeConfigRulesRequest'  customize = (DescribeConfigRulesRequest <<< customize) { "ConfigRuleNames": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype DescribeConfigRulesResponse = DescribeConfigRulesResponse 
  { "ConfigRules" :: NullOrUndefined (ConfigRules)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeConfigRulesResponse :: Newtype DescribeConfigRulesResponse _
derive instance repGenericDescribeConfigRulesResponse :: Generic DescribeConfigRulesResponse _
instance showDescribeConfigRulesResponse :: Show DescribeConfigRulesResponse where show = genericShow
instance decodeDescribeConfigRulesResponse :: Decode DescribeConfigRulesResponse where decode = genericDecode options
instance encodeDescribeConfigRulesResponse :: Encode DescribeConfigRulesResponse where encode = genericEncode options

-- | Constructs DescribeConfigRulesResponse from required parameters
newDescribeConfigRulesResponse :: DescribeConfigRulesResponse
newDescribeConfigRulesResponse  = DescribeConfigRulesResponse { "ConfigRules": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigRulesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigRulesResponse' :: ( { "ConfigRules" :: NullOrUndefined (ConfigRules) , "NextToken" :: NullOrUndefined (String) } -> {"ConfigRules" :: NullOrUndefined (ConfigRules) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeConfigRulesResponse
newDescribeConfigRulesResponse'  customize = (DescribeConfigRulesResponse <<< customize) { "ConfigRules": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>The input for the <a>DescribeConfigurationRecorderStatus</a> action.</p>
newtype DescribeConfigurationRecorderStatusRequest = DescribeConfigurationRecorderStatusRequest 
  { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList)
  }
derive instance newtypeDescribeConfigurationRecorderStatusRequest :: Newtype DescribeConfigurationRecorderStatusRequest _
derive instance repGenericDescribeConfigurationRecorderStatusRequest :: Generic DescribeConfigurationRecorderStatusRequest _
instance showDescribeConfigurationRecorderStatusRequest :: Show DescribeConfigurationRecorderStatusRequest where show = genericShow
instance decodeDescribeConfigurationRecorderStatusRequest :: Decode DescribeConfigurationRecorderStatusRequest where decode = genericDecode options
instance encodeDescribeConfigurationRecorderStatusRequest :: Encode DescribeConfigurationRecorderStatusRequest where encode = genericEncode options

-- | Constructs DescribeConfigurationRecorderStatusRequest from required parameters
newDescribeConfigurationRecorderStatusRequest :: DescribeConfigurationRecorderStatusRequest
newDescribeConfigurationRecorderStatusRequest  = DescribeConfigurationRecorderStatusRequest { "ConfigurationRecorderNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigurationRecorderStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationRecorderStatusRequest' :: ( { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) } -> {"ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) } ) -> DescribeConfigurationRecorderStatusRequest
newDescribeConfigurationRecorderStatusRequest'  customize = (DescribeConfigurationRecorderStatusRequest <<< customize) { "ConfigurationRecorderNames": (NullOrUndefined Nothing) }



-- | <p>The output for the <a>DescribeConfigurationRecorderStatus</a> action in JSON format.</p>
newtype DescribeConfigurationRecorderStatusResponse = DescribeConfigurationRecorderStatusResponse 
  { "ConfigurationRecordersStatus" :: NullOrUndefined (ConfigurationRecorderStatusList)
  }
derive instance newtypeDescribeConfigurationRecorderStatusResponse :: Newtype DescribeConfigurationRecorderStatusResponse _
derive instance repGenericDescribeConfigurationRecorderStatusResponse :: Generic DescribeConfigurationRecorderStatusResponse _
instance showDescribeConfigurationRecorderStatusResponse :: Show DescribeConfigurationRecorderStatusResponse where show = genericShow
instance decodeDescribeConfigurationRecorderStatusResponse :: Decode DescribeConfigurationRecorderStatusResponse where decode = genericDecode options
instance encodeDescribeConfigurationRecorderStatusResponse :: Encode DescribeConfigurationRecorderStatusResponse where encode = genericEncode options

-- | Constructs DescribeConfigurationRecorderStatusResponse from required parameters
newDescribeConfigurationRecorderStatusResponse :: DescribeConfigurationRecorderStatusResponse
newDescribeConfigurationRecorderStatusResponse  = DescribeConfigurationRecorderStatusResponse { "ConfigurationRecordersStatus": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigurationRecorderStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationRecorderStatusResponse' :: ( { "ConfigurationRecordersStatus" :: NullOrUndefined (ConfigurationRecorderStatusList) } -> {"ConfigurationRecordersStatus" :: NullOrUndefined (ConfigurationRecorderStatusList) } ) -> DescribeConfigurationRecorderStatusResponse
newDescribeConfigurationRecorderStatusResponse'  customize = (DescribeConfigurationRecorderStatusResponse <<< customize) { "ConfigurationRecordersStatus": (NullOrUndefined Nothing) }



-- | <p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>
newtype DescribeConfigurationRecordersRequest = DescribeConfigurationRecordersRequest 
  { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList)
  }
derive instance newtypeDescribeConfigurationRecordersRequest :: Newtype DescribeConfigurationRecordersRequest _
derive instance repGenericDescribeConfigurationRecordersRequest :: Generic DescribeConfigurationRecordersRequest _
instance showDescribeConfigurationRecordersRequest :: Show DescribeConfigurationRecordersRequest where show = genericShow
instance decodeDescribeConfigurationRecordersRequest :: Decode DescribeConfigurationRecordersRequest where decode = genericDecode options
instance encodeDescribeConfigurationRecordersRequest :: Encode DescribeConfigurationRecordersRequest where encode = genericEncode options

-- | Constructs DescribeConfigurationRecordersRequest from required parameters
newDescribeConfigurationRecordersRequest :: DescribeConfigurationRecordersRequest
newDescribeConfigurationRecordersRequest  = DescribeConfigurationRecordersRequest { "ConfigurationRecorderNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigurationRecordersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationRecordersRequest' :: ( { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) } -> {"ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) } ) -> DescribeConfigurationRecordersRequest
newDescribeConfigurationRecordersRequest'  customize = (DescribeConfigurationRecordersRequest <<< customize) { "ConfigurationRecorderNames": (NullOrUndefined Nothing) }



-- | <p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>
newtype DescribeConfigurationRecordersResponse = DescribeConfigurationRecordersResponse 
  { "ConfigurationRecorders" :: NullOrUndefined (ConfigurationRecorderList)
  }
derive instance newtypeDescribeConfigurationRecordersResponse :: Newtype DescribeConfigurationRecordersResponse _
derive instance repGenericDescribeConfigurationRecordersResponse :: Generic DescribeConfigurationRecordersResponse _
instance showDescribeConfigurationRecordersResponse :: Show DescribeConfigurationRecordersResponse where show = genericShow
instance decodeDescribeConfigurationRecordersResponse :: Decode DescribeConfigurationRecordersResponse where decode = genericDecode options
instance encodeDescribeConfigurationRecordersResponse :: Encode DescribeConfigurationRecordersResponse where encode = genericEncode options

-- | Constructs DescribeConfigurationRecordersResponse from required parameters
newDescribeConfigurationRecordersResponse :: DescribeConfigurationRecordersResponse
newDescribeConfigurationRecordersResponse  = DescribeConfigurationRecordersResponse { "ConfigurationRecorders": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigurationRecordersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationRecordersResponse' :: ( { "ConfigurationRecorders" :: NullOrUndefined (ConfigurationRecorderList) } -> {"ConfigurationRecorders" :: NullOrUndefined (ConfigurationRecorderList) } ) -> DescribeConfigurationRecordersResponse
newDescribeConfigurationRecordersResponse'  customize = (DescribeConfigurationRecordersResponse <<< customize) { "ConfigurationRecorders": (NullOrUndefined Nothing) }



-- | <p>The input for the <a>DeliveryChannelStatus</a> action.</p>
newtype DescribeDeliveryChannelStatusRequest = DescribeDeliveryChannelStatusRequest 
  { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList)
  }
derive instance newtypeDescribeDeliveryChannelStatusRequest :: Newtype DescribeDeliveryChannelStatusRequest _
derive instance repGenericDescribeDeliveryChannelStatusRequest :: Generic DescribeDeliveryChannelStatusRequest _
instance showDescribeDeliveryChannelStatusRequest :: Show DescribeDeliveryChannelStatusRequest where show = genericShow
instance decodeDescribeDeliveryChannelStatusRequest :: Decode DescribeDeliveryChannelStatusRequest where decode = genericDecode options
instance encodeDescribeDeliveryChannelStatusRequest :: Encode DescribeDeliveryChannelStatusRequest where encode = genericEncode options

-- | Constructs DescribeDeliveryChannelStatusRequest from required parameters
newDescribeDeliveryChannelStatusRequest :: DescribeDeliveryChannelStatusRequest
newDescribeDeliveryChannelStatusRequest  = DescribeDeliveryChannelStatusRequest { "DeliveryChannelNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeDeliveryChannelStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeliveryChannelStatusRequest' :: ( { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) } -> {"DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) } ) -> DescribeDeliveryChannelStatusRequest
newDescribeDeliveryChannelStatusRequest'  customize = (DescribeDeliveryChannelStatusRequest <<< customize) { "DeliveryChannelNames": (NullOrUndefined Nothing) }



-- | <p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>
newtype DescribeDeliveryChannelStatusResponse = DescribeDeliveryChannelStatusResponse 
  { "DeliveryChannelsStatus" :: NullOrUndefined (DeliveryChannelStatusList)
  }
derive instance newtypeDescribeDeliveryChannelStatusResponse :: Newtype DescribeDeliveryChannelStatusResponse _
derive instance repGenericDescribeDeliveryChannelStatusResponse :: Generic DescribeDeliveryChannelStatusResponse _
instance showDescribeDeliveryChannelStatusResponse :: Show DescribeDeliveryChannelStatusResponse where show = genericShow
instance decodeDescribeDeliveryChannelStatusResponse :: Decode DescribeDeliveryChannelStatusResponse where decode = genericDecode options
instance encodeDescribeDeliveryChannelStatusResponse :: Encode DescribeDeliveryChannelStatusResponse where encode = genericEncode options

-- | Constructs DescribeDeliveryChannelStatusResponse from required parameters
newDescribeDeliveryChannelStatusResponse :: DescribeDeliveryChannelStatusResponse
newDescribeDeliveryChannelStatusResponse  = DescribeDeliveryChannelStatusResponse { "DeliveryChannelsStatus": (NullOrUndefined Nothing) }

-- | Constructs DescribeDeliveryChannelStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeliveryChannelStatusResponse' :: ( { "DeliveryChannelsStatus" :: NullOrUndefined (DeliveryChannelStatusList) } -> {"DeliveryChannelsStatus" :: NullOrUndefined (DeliveryChannelStatusList) } ) -> DescribeDeliveryChannelStatusResponse
newDescribeDeliveryChannelStatusResponse'  customize = (DescribeDeliveryChannelStatusResponse <<< customize) { "DeliveryChannelsStatus": (NullOrUndefined Nothing) }



-- | <p>The input for the <a>DescribeDeliveryChannels</a> action.</p>
newtype DescribeDeliveryChannelsRequest = DescribeDeliveryChannelsRequest 
  { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList)
  }
derive instance newtypeDescribeDeliveryChannelsRequest :: Newtype DescribeDeliveryChannelsRequest _
derive instance repGenericDescribeDeliveryChannelsRequest :: Generic DescribeDeliveryChannelsRequest _
instance showDescribeDeliveryChannelsRequest :: Show DescribeDeliveryChannelsRequest where show = genericShow
instance decodeDescribeDeliveryChannelsRequest :: Decode DescribeDeliveryChannelsRequest where decode = genericDecode options
instance encodeDescribeDeliveryChannelsRequest :: Encode DescribeDeliveryChannelsRequest where encode = genericEncode options

-- | Constructs DescribeDeliveryChannelsRequest from required parameters
newDescribeDeliveryChannelsRequest :: DescribeDeliveryChannelsRequest
newDescribeDeliveryChannelsRequest  = DescribeDeliveryChannelsRequest { "DeliveryChannelNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeDeliveryChannelsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeliveryChannelsRequest' :: ( { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) } -> {"DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) } ) -> DescribeDeliveryChannelsRequest
newDescribeDeliveryChannelsRequest'  customize = (DescribeDeliveryChannelsRequest <<< customize) { "DeliveryChannelNames": (NullOrUndefined Nothing) }



-- | <p>The output for the <a>DescribeDeliveryChannels</a> action.</p>
newtype DescribeDeliveryChannelsResponse = DescribeDeliveryChannelsResponse 
  { "DeliveryChannels" :: NullOrUndefined (DeliveryChannelList)
  }
derive instance newtypeDescribeDeliveryChannelsResponse :: Newtype DescribeDeliveryChannelsResponse _
derive instance repGenericDescribeDeliveryChannelsResponse :: Generic DescribeDeliveryChannelsResponse _
instance showDescribeDeliveryChannelsResponse :: Show DescribeDeliveryChannelsResponse where show = genericShow
instance decodeDescribeDeliveryChannelsResponse :: Decode DescribeDeliveryChannelsResponse where decode = genericDecode options
instance encodeDescribeDeliveryChannelsResponse :: Encode DescribeDeliveryChannelsResponse where encode = genericEncode options

-- | Constructs DescribeDeliveryChannelsResponse from required parameters
newDescribeDeliveryChannelsResponse :: DescribeDeliveryChannelsResponse
newDescribeDeliveryChannelsResponse  = DescribeDeliveryChannelsResponse { "DeliveryChannels": (NullOrUndefined Nothing) }

-- | Constructs DescribeDeliveryChannelsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeliveryChannelsResponse' :: ( { "DeliveryChannels" :: NullOrUndefined (DeliveryChannelList) } -> {"DeliveryChannels" :: NullOrUndefined (DeliveryChannelList) } ) -> DescribeDeliveryChannelsResponse
newDescribeDeliveryChannelsResponse'  customize = (DescribeDeliveryChannelsResponse <<< customize) { "DeliveryChannels": (NullOrUndefined Nothing) }



newtype EarlierTime = EarlierTime Types.Timestamp
derive instance newtypeEarlierTime :: Newtype EarlierTime _
derive instance repGenericEarlierTime :: Generic EarlierTime _
instance showEarlierTime :: Show EarlierTime where show = genericShow
instance decodeEarlierTime :: Decode EarlierTime where decode = genericDecode options
instance encodeEarlierTime :: Encode EarlierTime where encode = genericEncode options



newtype EmptiableStringWithCharLimit256 = EmptiableStringWithCharLimit256 String
derive instance newtypeEmptiableStringWithCharLimit256 :: Newtype EmptiableStringWithCharLimit256 _
derive instance repGenericEmptiableStringWithCharLimit256 :: Generic EmptiableStringWithCharLimit256 _
instance showEmptiableStringWithCharLimit256 :: Show EmptiableStringWithCharLimit256 where show = genericShow
instance decodeEmptiableStringWithCharLimit256 :: Decode EmptiableStringWithCharLimit256 where decode = genericDecode options
instance encodeEmptiableStringWithCharLimit256 :: Encode EmptiableStringWithCharLimit256 where encode = genericEncode options



-- | <p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>
newtype Evaluation = Evaluation 
  { "ComplianceResourceType" :: (StringWithCharLimit256)
  , "ComplianceResourceId" :: (BaseResourceId)
  , "ComplianceType" :: (ComplianceType)
  , "Annotation" :: NullOrUndefined (StringWithCharLimit256)
  , "OrderingTimestamp" :: (OrderingTimestamp)
  }
derive instance newtypeEvaluation :: Newtype Evaluation _
derive instance repGenericEvaluation :: Generic Evaluation _
instance showEvaluation :: Show Evaluation where show = genericShow
instance decodeEvaluation :: Decode Evaluation where decode = genericDecode options
instance encodeEvaluation :: Encode Evaluation where encode = genericEncode options

-- | Constructs Evaluation from required parameters
newEvaluation :: BaseResourceId -> StringWithCharLimit256 -> ComplianceType -> OrderingTimestamp -> Evaluation
newEvaluation _ComplianceResourceId _ComplianceResourceType _ComplianceType _OrderingTimestamp = Evaluation { "ComplianceResourceId": _ComplianceResourceId, "ComplianceResourceType": _ComplianceResourceType, "ComplianceType": _ComplianceType, "OrderingTimestamp": _OrderingTimestamp, "Annotation": (NullOrUndefined Nothing) }

-- | Constructs Evaluation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluation' :: BaseResourceId -> StringWithCharLimit256 -> ComplianceType -> OrderingTimestamp -> ( { "ComplianceResourceType" :: (StringWithCharLimit256) , "ComplianceResourceId" :: (BaseResourceId) , "ComplianceType" :: (ComplianceType) , "Annotation" :: NullOrUndefined (StringWithCharLimit256) , "OrderingTimestamp" :: (OrderingTimestamp) } -> {"ComplianceResourceType" :: (StringWithCharLimit256) , "ComplianceResourceId" :: (BaseResourceId) , "ComplianceType" :: (ComplianceType) , "Annotation" :: NullOrUndefined (StringWithCharLimit256) , "OrderingTimestamp" :: (OrderingTimestamp) } ) -> Evaluation
newEvaluation' _ComplianceResourceId _ComplianceResourceType _ComplianceType _OrderingTimestamp customize = (Evaluation <<< customize) { "ComplianceResourceId": _ComplianceResourceId, "ComplianceResourceType": _ComplianceResourceType, "ComplianceType": _ComplianceType, "OrderingTimestamp": _OrderingTimestamp, "Annotation": (NullOrUndefined Nothing) }



-- | <p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related timestamps, and supplementary information.</p>
newtype EvaluationResult = EvaluationResult 
  { "EvaluationResultIdentifier" :: NullOrUndefined (EvaluationResultIdentifier)
  , "ComplianceType" :: NullOrUndefined (ComplianceType)
  , "ResultRecordedTime" :: NullOrUndefined (Date)
  , "ConfigRuleInvokedTime" :: NullOrUndefined (Date)
  , "Annotation" :: NullOrUndefined (StringWithCharLimit256)
  , "ResultToken" :: NullOrUndefined (String)
  }
derive instance newtypeEvaluationResult :: Newtype EvaluationResult _
derive instance repGenericEvaluationResult :: Generic EvaluationResult _
instance showEvaluationResult :: Show EvaluationResult where show = genericShow
instance decodeEvaluationResult :: Decode EvaluationResult where decode = genericDecode options
instance encodeEvaluationResult :: Encode EvaluationResult where encode = genericEncode options

-- | Constructs EvaluationResult from required parameters
newEvaluationResult :: EvaluationResult
newEvaluationResult  = EvaluationResult { "Annotation": (NullOrUndefined Nothing), "ComplianceType": (NullOrUndefined Nothing), "ConfigRuleInvokedTime": (NullOrUndefined Nothing), "EvaluationResultIdentifier": (NullOrUndefined Nothing), "ResultRecordedTime": (NullOrUndefined Nothing), "ResultToken": (NullOrUndefined Nothing) }

-- | Constructs EvaluationResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluationResult' :: ( { "EvaluationResultIdentifier" :: NullOrUndefined (EvaluationResultIdentifier) , "ComplianceType" :: NullOrUndefined (ComplianceType) , "ResultRecordedTime" :: NullOrUndefined (Date) , "ConfigRuleInvokedTime" :: NullOrUndefined (Date) , "Annotation" :: NullOrUndefined (StringWithCharLimit256) , "ResultToken" :: NullOrUndefined (String) } -> {"EvaluationResultIdentifier" :: NullOrUndefined (EvaluationResultIdentifier) , "ComplianceType" :: NullOrUndefined (ComplianceType) , "ResultRecordedTime" :: NullOrUndefined (Date) , "ConfigRuleInvokedTime" :: NullOrUndefined (Date) , "Annotation" :: NullOrUndefined (StringWithCharLimit256) , "ResultToken" :: NullOrUndefined (String) } ) -> EvaluationResult
newEvaluationResult'  customize = (EvaluationResult <<< customize) { "Annotation": (NullOrUndefined Nothing), "ComplianceType": (NullOrUndefined Nothing), "ConfigRuleInvokedTime": (NullOrUndefined Nothing), "EvaluationResultIdentifier": (NullOrUndefined Nothing), "ResultRecordedTime": (NullOrUndefined Nothing), "ResultToken": (NullOrUndefined Nothing) }



-- | <p>Uniquely identifies an evaluation result.</p>
newtype EvaluationResultIdentifier = EvaluationResultIdentifier 
  { "EvaluationResultQualifier" :: NullOrUndefined (EvaluationResultQualifier)
  , "OrderingTimestamp" :: NullOrUndefined (Date)
  }
derive instance newtypeEvaluationResultIdentifier :: Newtype EvaluationResultIdentifier _
derive instance repGenericEvaluationResultIdentifier :: Generic EvaluationResultIdentifier _
instance showEvaluationResultIdentifier :: Show EvaluationResultIdentifier where show = genericShow
instance decodeEvaluationResultIdentifier :: Decode EvaluationResultIdentifier where decode = genericDecode options
instance encodeEvaluationResultIdentifier :: Encode EvaluationResultIdentifier where encode = genericEncode options

-- | Constructs EvaluationResultIdentifier from required parameters
newEvaluationResultIdentifier :: EvaluationResultIdentifier
newEvaluationResultIdentifier  = EvaluationResultIdentifier { "EvaluationResultQualifier": (NullOrUndefined Nothing), "OrderingTimestamp": (NullOrUndefined Nothing) }

-- | Constructs EvaluationResultIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluationResultIdentifier' :: ( { "EvaluationResultQualifier" :: NullOrUndefined (EvaluationResultQualifier) , "OrderingTimestamp" :: NullOrUndefined (Date) } -> {"EvaluationResultQualifier" :: NullOrUndefined (EvaluationResultQualifier) , "OrderingTimestamp" :: NullOrUndefined (Date) } ) -> EvaluationResultIdentifier
newEvaluationResultIdentifier'  customize = (EvaluationResultIdentifier <<< customize) { "EvaluationResultQualifier": (NullOrUndefined Nothing), "OrderingTimestamp": (NullOrUndefined Nothing) }



-- | <p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>
newtype EvaluationResultQualifier = EvaluationResultQualifier 
  { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64)
  , "ResourceType" :: NullOrUndefined (StringWithCharLimit256)
  , "ResourceId" :: NullOrUndefined (BaseResourceId)
  }
derive instance newtypeEvaluationResultQualifier :: Newtype EvaluationResultQualifier _
derive instance repGenericEvaluationResultQualifier :: Generic EvaluationResultQualifier _
instance showEvaluationResultQualifier :: Show EvaluationResultQualifier where show = genericShow
instance decodeEvaluationResultQualifier :: Decode EvaluationResultQualifier where decode = genericDecode options
instance encodeEvaluationResultQualifier :: Encode EvaluationResultQualifier where encode = genericEncode options

-- | Constructs EvaluationResultQualifier from required parameters
newEvaluationResultQualifier :: EvaluationResultQualifier
newEvaluationResultQualifier  = EvaluationResultQualifier { "ConfigRuleName": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs EvaluationResultQualifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluationResultQualifier' :: ( { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ResourceId" :: NullOrUndefined (BaseResourceId) } -> {"ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64) , "ResourceType" :: NullOrUndefined (StringWithCharLimit256) , "ResourceId" :: NullOrUndefined (BaseResourceId) } ) -> EvaluationResultQualifier
newEvaluationResultQualifier'  customize = (EvaluationResultQualifier <<< customize) { "ConfigRuleName": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



newtype EvaluationResults = EvaluationResults (Array EvaluationResult)
derive instance newtypeEvaluationResults :: Newtype EvaluationResults _
derive instance repGenericEvaluationResults :: Generic EvaluationResults _
instance showEvaluationResults :: Show EvaluationResults where show = genericShow
instance decodeEvaluationResults :: Decode EvaluationResults where decode = genericDecode options
instance encodeEvaluationResults :: Encode EvaluationResults where encode = genericEncode options



newtype Evaluations = Evaluations (Array Evaluation)
derive instance newtypeEvaluations :: Newtype Evaluations _
derive instance repGenericEvaluations :: Generic Evaluations _
instance showEvaluations :: Show Evaluations where show = genericShow
instance decodeEvaluations :: Decode Evaluations where decode = genericDecode options
instance encodeEvaluations :: Encode Evaluations where encode = genericEncode options



newtype EventSource = EventSource String
derive instance newtypeEventSource :: Newtype EventSource _
derive instance repGenericEventSource :: Generic EventSource _
instance showEventSource :: Show EventSource where show = genericShow
instance decodeEventSource :: Decode EventSource where decode = genericDecode options
instance encodeEventSource :: Encode EventSource where encode = genericEncode options



-- | <p/>
newtype GetComplianceDetailsByConfigRuleRequest = GetComplianceDetailsByConfigRuleRequest 
  { "ConfigRuleName" :: (StringWithCharLimit64)
  , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes)
  , "Limit" :: NullOrUndefined (Limit)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeGetComplianceDetailsByConfigRuleRequest :: Newtype GetComplianceDetailsByConfigRuleRequest _
derive instance repGenericGetComplianceDetailsByConfigRuleRequest :: Generic GetComplianceDetailsByConfigRuleRequest _
instance showGetComplianceDetailsByConfigRuleRequest :: Show GetComplianceDetailsByConfigRuleRequest where show = genericShow
instance decodeGetComplianceDetailsByConfigRuleRequest :: Decode GetComplianceDetailsByConfigRuleRequest where decode = genericDecode options
instance encodeGetComplianceDetailsByConfigRuleRequest :: Encode GetComplianceDetailsByConfigRuleRequest where encode = genericEncode options

-- | Constructs GetComplianceDetailsByConfigRuleRequest from required parameters
newGetComplianceDetailsByConfigRuleRequest :: StringWithCharLimit64 -> GetComplianceDetailsByConfigRuleRequest
newGetComplianceDetailsByConfigRuleRequest _ConfigRuleName = GetComplianceDetailsByConfigRuleRequest { "ConfigRuleName": _ConfigRuleName, "ComplianceTypes": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceDetailsByConfigRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceDetailsByConfigRuleRequest' :: StringWithCharLimit64 -> ( { "ConfigRuleName" :: (StringWithCharLimit64) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "Limit" :: NullOrUndefined (Limit) , "NextToken" :: NullOrUndefined (NextToken) } -> {"ConfigRuleName" :: (StringWithCharLimit64) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "Limit" :: NullOrUndefined (Limit) , "NextToken" :: NullOrUndefined (NextToken) } ) -> GetComplianceDetailsByConfigRuleRequest
newGetComplianceDetailsByConfigRuleRequest' _ConfigRuleName customize = (GetComplianceDetailsByConfigRuleRequest <<< customize) { "ConfigRuleName": _ConfigRuleName, "ComplianceTypes": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetComplianceDetailsByConfigRuleResponse = GetComplianceDetailsByConfigRuleResponse 
  { "EvaluationResults" :: NullOrUndefined (EvaluationResults)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeGetComplianceDetailsByConfigRuleResponse :: Newtype GetComplianceDetailsByConfigRuleResponse _
derive instance repGenericGetComplianceDetailsByConfigRuleResponse :: Generic GetComplianceDetailsByConfigRuleResponse _
instance showGetComplianceDetailsByConfigRuleResponse :: Show GetComplianceDetailsByConfigRuleResponse where show = genericShow
instance decodeGetComplianceDetailsByConfigRuleResponse :: Decode GetComplianceDetailsByConfigRuleResponse where decode = genericDecode options
instance encodeGetComplianceDetailsByConfigRuleResponse :: Encode GetComplianceDetailsByConfigRuleResponse where encode = genericEncode options

-- | Constructs GetComplianceDetailsByConfigRuleResponse from required parameters
newGetComplianceDetailsByConfigRuleResponse :: GetComplianceDetailsByConfigRuleResponse
newGetComplianceDetailsByConfigRuleResponse  = GetComplianceDetailsByConfigRuleResponse { "EvaluationResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceDetailsByConfigRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceDetailsByConfigRuleResponse' :: ( { "EvaluationResults" :: NullOrUndefined (EvaluationResults) , "NextToken" :: NullOrUndefined (NextToken) } -> {"EvaluationResults" :: NullOrUndefined (EvaluationResults) , "NextToken" :: NullOrUndefined (NextToken) } ) -> GetComplianceDetailsByConfigRuleResponse
newGetComplianceDetailsByConfigRuleResponse'  customize = (GetComplianceDetailsByConfigRuleResponse <<< customize) { "EvaluationResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetComplianceDetailsByResourceRequest = GetComplianceDetailsByResourceRequest 
  { "ResourceType" :: (StringWithCharLimit256)
  , "ResourceId" :: (BaseResourceId)
  , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetComplianceDetailsByResourceRequest :: Newtype GetComplianceDetailsByResourceRequest _
derive instance repGenericGetComplianceDetailsByResourceRequest :: Generic GetComplianceDetailsByResourceRequest _
instance showGetComplianceDetailsByResourceRequest :: Show GetComplianceDetailsByResourceRequest where show = genericShow
instance decodeGetComplianceDetailsByResourceRequest :: Decode GetComplianceDetailsByResourceRequest where decode = genericDecode options
instance encodeGetComplianceDetailsByResourceRequest :: Encode GetComplianceDetailsByResourceRequest where encode = genericEncode options

-- | Constructs GetComplianceDetailsByResourceRequest from required parameters
newGetComplianceDetailsByResourceRequest :: BaseResourceId -> StringWithCharLimit256 -> GetComplianceDetailsByResourceRequest
newGetComplianceDetailsByResourceRequest _ResourceId _ResourceType = GetComplianceDetailsByResourceRequest { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "ComplianceTypes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceDetailsByResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceDetailsByResourceRequest' :: BaseResourceId -> StringWithCharLimit256 -> ( { "ResourceType" :: (StringWithCharLimit256) , "ResourceId" :: (BaseResourceId) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "NextToken" :: NullOrUndefined (String) } -> {"ResourceType" :: (StringWithCharLimit256) , "ResourceId" :: (BaseResourceId) , "ComplianceTypes" :: NullOrUndefined (ComplianceTypes) , "NextToken" :: NullOrUndefined (String) } ) -> GetComplianceDetailsByResourceRequest
newGetComplianceDetailsByResourceRequest' _ResourceId _ResourceType customize = (GetComplianceDetailsByResourceRequest <<< customize) { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "ComplianceTypes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetComplianceDetailsByResourceResponse = GetComplianceDetailsByResourceResponse 
  { "EvaluationResults" :: NullOrUndefined (EvaluationResults)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetComplianceDetailsByResourceResponse :: Newtype GetComplianceDetailsByResourceResponse _
derive instance repGenericGetComplianceDetailsByResourceResponse :: Generic GetComplianceDetailsByResourceResponse _
instance showGetComplianceDetailsByResourceResponse :: Show GetComplianceDetailsByResourceResponse where show = genericShow
instance decodeGetComplianceDetailsByResourceResponse :: Decode GetComplianceDetailsByResourceResponse where decode = genericDecode options
instance encodeGetComplianceDetailsByResourceResponse :: Encode GetComplianceDetailsByResourceResponse where encode = genericEncode options

-- | Constructs GetComplianceDetailsByResourceResponse from required parameters
newGetComplianceDetailsByResourceResponse :: GetComplianceDetailsByResourceResponse
newGetComplianceDetailsByResourceResponse  = GetComplianceDetailsByResourceResponse { "EvaluationResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceDetailsByResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceDetailsByResourceResponse' :: ( { "EvaluationResults" :: NullOrUndefined (EvaluationResults) , "NextToken" :: NullOrUndefined (String) } -> {"EvaluationResults" :: NullOrUndefined (EvaluationResults) , "NextToken" :: NullOrUndefined (String) } ) -> GetComplianceDetailsByResourceResponse
newGetComplianceDetailsByResourceResponse'  customize = (GetComplianceDetailsByResourceResponse <<< customize) { "EvaluationResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetComplianceSummaryByConfigRuleResponse = GetComplianceSummaryByConfigRuleResponse 
  { "ComplianceSummary" :: NullOrUndefined (ComplianceSummary)
  }
derive instance newtypeGetComplianceSummaryByConfigRuleResponse :: Newtype GetComplianceSummaryByConfigRuleResponse _
derive instance repGenericGetComplianceSummaryByConfigRuleResponse :: Generic GetComplianceSummaryByConfigRuleResponse _
instance showGetComplianceSummaryByConfigRuleResponse :: Show GetComplianceSummaryByConfigRuleResponse where show = genericShow
instance decodeGetComplianceSummaryByConfigRuleResponse :: Decode GetComplianceSummaryByConfigRuleResponse where decode = genericDecode options
instance encodeGetComplianceSummaryByConfigRuleResponse :: Encode GetComplianceSummaryByConfigRuleResponse where encode = genericEncode options

-- | Constructs GetComplianceSummaryByConfigRuleResponse from required parameters
newGetComplianceSummaryByConfigRuleResponse :: GetComplianceSummaryByConfigRuleResponse
newGetComplianceSummaryByConfigRuleResponse  = GetComplianceSummaryByConfigRuleResponse { "ComplianceSummary": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceSummaryByConfigRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceSummaryByConfigRuleResponse' :: ( { "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) } -> {"ComplianceSummary" :: NullOrUndefined (ComplianceSummary) } ) -> GetComplianceSummaryByConfigRuleResponse
newGetComplianceSummaryByConfigRuleResponse'  customize = (GetComplianceSummaryByConfigRuleResponse <<< customize) { "ComplianceSummary": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetComplianceSummaryByResourceTypeRequest = GetComplianceSummaryByResourceTypeRequest 
  { "ResourceTypes" :: NullOrUndefined (ResourceTypes)
  }
derive instance newtypeGetComplianceSummaryByResourceTypeRequest :: Newtype GetComplianceSummaryByResourceTypeRequest _
derive instance repGenericGetComplianceSummaryByResourceTypeRequest :: Generic GetComplianceSummaryByResourceTypeRequest _
instance showGetComplianceSummaryByResourceTypeRequest :: Show GetComplianceSummaryByResourceTypeRequest where show = genericShow
instance decodeGetComplianceSummaryByResourceTypeRequest :: Decode GetComplianceSummaryByResourceTypeRequest where decode = genericDecode options
instance encodeGetComplianceSummaryByResourceTypeRequest :: Encode GetComplianceSummaryByResourceTypeRequest where encode = genericEncode options

-- | Constructs GetComplianceSummaryByResourceTypeRequest from required parameters
newGetComplianceSummaryByResourceTypeRequest :: GetComplianceSummaryByResourceTypeRequest
newGetComplianceSummaryByResourceTypeRequest  = GetComplianceSummaryByResourceTypeRequest { "ResourceTypes": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceSummaryByResourceTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceSummaryByResourceTypeRequest' :: ( { "ResourceTypes" :: NullOrUndefined (ResourceTypes) } -> {"ResourceTypes" :: NullOrUndefined (ResourceTypes) } ) -> GetComplianceSummaryByResourceTypeRequest
newGetComplianceSummaryByResourceTypeRequest'  customize = (GetComplianceSummaryByResourceTypeRequest <<< customize) { "ResourceTypes": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetComplianceSummaryByResourceTypeResponse = GetComplianceSummaryByResourceTypeResponse 
  { "ComplianceSummariesByResourceType" :: NullOrUndefined (ComplianceSummariesByResourceType)
  }
derive instance newtypeGetComplianceSummaryByResourceTypeResponse :: Newtype GetComplianceSummaryByResourceTypeResponse _
derive instance repGenericGetComplianceSummaryByResourceTypeResponse :: Generic GetComplianceSummaryByResourceTypeResponse _
instance showGetComplianceSummaryByResourceTypeResponse :: Show GetComplianceSummaryByResourceTypeResponse where show = genericShow
instance decodeGetComplianceSummaryByResourceTypeResponse :: Decode GetComplianceSummaryByResourceTypeResponse where decode = genericDecode options
instance encodeGetComplianceSummaryByResourceTypeResponse :: Encode GetComplianceSummaryByResourceTypeResponse where encode = genericEncode options

-- | Constructs GetComplianceSummaryByResourceTypeResponse from required parameters
newGetComplianceSummaryByResourceTypeResponse :: GetComplianceSummaryByResourceTypeResponse
newGetComplianceSummaryByResourceTypeResponse  = GetComplianceSummaryByResourceTypeResponse { "ComplianceSummariesByResourceType": (NullOrUndefined Nothing) }

-- | Constructs GetComplianceSummaryByResourceTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetComplianceSummaryByResourceTypeResponse' :: ( { "ComplianceSummariesByResourceType" :: NullOrUndefined (ComplianceSummariesByResourceType) } -> {"ComplianceSummariesByResourceType" :: NullOrUndefined (ComplianceSummariesByResourceType) } ) -> GetComplianceSummaryByResourceTypeResponse
newGetComplianceSummaryByResourceTypeResponse'  customize = (GetComplianceSummaryByResourceTypeResponse <<< customize) { "ComplianceSummariesByResourceType": (NullOrUndefined Nothing) }



newtype GetDiscoveredResourceCountsRequest = GetDiscoveredResourceCountsRequest 
  { "resourceTypes" :: NullOrUndefined (ResourceTypes)
  , "limit" :: NullOrUndefined (Limit)
  , "nextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeGetDiscoveredResourceCountsRequest :: Newtype GetDiscoveredResourceCountsRequest _
derive instance repGenericGetDiscoveredResourceCountsRequest :: Generic GetDiscoveredResourceCountsRequest _
instance showGetDiscoveredResourceCountsRequest :: Show GetDiscoveredResourceCountsRequest where show = genericShow
instance decodeGetDiscoveredResourceCountsRequest :: Decode GetDiscoveredResourceCountsRequest where decode = genericDecode options
instance encodeGetDiscoveredResourceCountsRequest :: Encode GetDiscoveredResourceCountsRequest where encode = genericEncode options

-- | Constructs GetDiscoveredResourceCountsRequest from required parameters
newGetDiscoveredResourceCountsRequest :: GetDiscoveredResourceCountsRequest
newGetDiscoveredResourceCountsRequest  = GetDiscoveredResourceCountsRequest { "limit": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "resourceTypes": (NullOrUndefined Nothing) }

-- | Constructs GetDiscoveredResourceCountsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDiscoveredResourceCountsRequest' :: ( { "resourceTypes" :: NullOrUndefined (ResourceTypes) , "limit" :: NullOrUndefined (Limit) , "nextToken" :: NullOrUndefined (NextToken) } -> {"resourceTypes" :: NullOrUndefined (ResourceTypes) , "limit" :: NullOrUndefined (Limit) , "nextToken" :: NullOrUndefined (NextToken) } ) -> GetDiscoveredResourceCountsRequest
newGetDiscoveredResourceCountsRequest'  customize = (GetDiscoveredResourceCountsRequest <<< customize) { "limit": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "resourceTypes": (NullOrUndefined Nothing) }



newtype GetDiscoveredResourceCountsResponse = GetDiscoveredResourceCountsResponse 
  { "totalDiscoveredResources" :: NullOrUndefined (Number)
  , "resourceCounts" :: NullOrUndefined (ResourceCounts)
  , "nextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeGetDiscoveredResourceCountsResponse :: Newtype GetDiscoveredResourceCountsResponse _
derive instance repGenericGetDiscoveredResourceCountsResponse :: Generic GetDiscoveredResourceCountsResponse _
instance showGetDiscoveredResourceCountsResponse :: Show GetDiscoveredResourceCountsResponse where show = genericShow
instance decodeGetDiscoveredResourceCountsResponse :: Decode GetDiscoveredResourceCountsResponse where decode = genericDecode options
instance encodeGetDiscoveredResourceCountsResponse :: Encode GetDiscoveredResourceCountsResponse where encode = genericEncode options

-- | Constructs GetDiscoveredResourceCountsResponse from required parameters
newGetDiscoveredResourceCountsResponse :: GetDiscoveredResourceCountsResponse
newGetDiscoveredResourceCountsResponse  = GetDiscoveredResourceCountsResponse { "nextToken": (NullOrUndefined Nothing), "resourceCounts": (NullOrUndefined Nothing), "totalDiscoveredResources": (NullOrUndefined Nothing) }

-- | Constructs GetDiscoveredResourceCountsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDiscoveredResourceCountsResponse' :: ( { "totalDiscoveredResources" :: NullOrUndefined (Number) , "resourceCounts" :: NullOrUndefined (ResourceCounts) , "nextToken" :: NullOrUndefined (NextToken) } -> {"totalDiscoveredResources" :: NullOrUndefined (Number) , "resourceCounts" :: NullOrUndefined (ResourceCounts) , "nextToken" :: NullOrUndefined (NextToken) } ) -> GetDiscoveredResourceCountsResponse
newGetDiscoveredResourceCountsResponse'  customize = (GetDiscoveredResourceCountsResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "resourceCounts": (NullOrUndefined Nothing), "totalDiscoveredResources": (NullOrUndefined Nothing) }



-- | <p>The input for the <a>GetResourceConfigHistory</a> action.</p>
newtype GetResourceConfigHistoryRequest = GetResourceConfigHistoryRequest 
  { "resourceType" :: (ResourceType)
  , "resourceId" :: (ResourceId)
  , "laterTime" :: NullOrUndefined (LaterTime)
  , "earlierTime" :: NullOrUndefined (EarlierTime)
  , "chronologicalOrder" :: NullOrUndefined (ChronologicalOrder)
  , "limit" :: NullOrUndefined (Limit)
  , "nextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeGetResourceConfigHistoryRequest :: Newtype GetResourceConfigHistoryRequest _
derive instance repGenericGetResourceConfigHistoryRequest :: Generic GetResourceConfigHistoryRequest _
instance showGetResourceConfigHistoryRequest :: Show GetResourceConfigHistoryRequest where show = genericShow
instance decodeGetResourceConfigHistoryRequest :: Decode GetResourceConfigHistoryRequest where decode = genericDecode options
instance encodeGetResourceConfigHistoryRequest :: Encode GetResourceConfigHistoryRequest where encode = genericEncode options

-- | Constructs GetResourceConfigHistoryRequest from required parameters
newGetResourceConfigHistoryRequest :: ResourceId -> ResourceType -> GetResourceConfigHistoryRequest
newGetResourceConfigHistoryRequest _resourceId _resourceType = GetResourceConfigHistoryRequest { "resourceId": _resourceId, "resourceType": _resourceType, "chronologicalOrder": (NullOrUndefined Nothing), "earlierTime": (NullOrUndefined Nothing), "laterTime": (NullOrUndefined Nothing), "limit": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs GetResourceConfigHistoryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetResourceConfigHistoryRequest' :: ResourceId -> ResourceType -> ( { "resourceType" :: (ResourceType) , "resourceId" :: (ResourceId) , "laterTime" :: NullOrUndefined (LaterTime) , "earlierTime" :: NullOrUndefined (EarlierTime) , "chronologicalOrder" :: NullOrUndefined (ChronologicalOrder) , "limit" :: NullOrUndefined (Limit) , "nextToken" :: NullOrUndefined (NextToken) } -> {"resourceType" :: (ResourceType) , "resourceId" :: (ResourceId) , "laterTime" :: NullOrUndefined (LaterTime) , "earlierTime" :: NullOrUndefined (EarlierTime) , "chronologicalOrder" :: NullOrUndefined (ChronologicalOrder) , "limit" :: NullOrUndefined (Limit) , "nextToken" :: NullOrUndefined (NextToken) } ) -> GetResourceConfigHistoryRequest
newGetResourceConfigHistoryRequest' _resourceId _resourceType customize = (GetResourceConfigHistoryRequest <<< customize) { "resourceId": _resourceId, "resourceType": _resourceType, "chronologicalOrder": (NullOrUndefined Nothing), "earlierTime": (NullOrUndefined Nothing), "laterTime": (NullOrUndefined Nothing), "limit": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



-- | <p>The output for the <a>GetResourceConfigHistory</a> action.</p>
newtype GetResourceConfigHistoryResponse = GetResourceConfigHistoryResponse 
  { "configurationItems" :: NullOrUndefined (ConfigurationItemList)
  , "nextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeGetResourceConfigHistoryResponse :: Newtype GetResourceConfigHistoryResponse _
derive instance repGenericGetResourceConfigHistoryResponse :: Generic GetResourceConfigHistoryResponse _
instance showGetResourceConfigHistoryResponse :: Show GetResourceConfigHistoryResponse where show = genericShow
instance decodeGetResourceConfigHistoryResponse :: Decode GetResourceConfigHistoryResponse where decode = genericDecode options
instance encodeGetResourceConfigHistoryResponse :: Encode GetResourceConfigHistoryResponse where encode = genericEncode options

-- | Constructs GetResourceConfigHistoryResponse from required parameters
newGetResourceConfigHistoryResponse :: GetResourceConfigHistoryResponse
newGetResourceConfigHistoryResponse  = GetResourceConfigHistoryResponse { "configurationItems": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs GetResourceConfigHistoryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetResourceConfigHistoryResponse' :: ( { "configurationItems" :: NullOrUndefined (ConfigurationItemList) , "nextToken" :: NullOrUndefined (NextToken) } -> {"configurationItems" :: NullOrUndefined (ConfigurationItemList) , "nextToken" :: NullOrUndefined (NextToken) } ) -> GetResourceConfigHistoryResponse
newGetResourceConfigHistoryResponse'  customize = (GetResourceConfigHistoryResponse <<< customize) { "configurationItems": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype IncludeGlobalResourceTypes = IncludeGlobalResourceTypes Boolean
derive instance newtypeIncludeGlobalResourceTypes :: Newtype IncludeGlobalResourceTypes _
derive instance repGenericIncludeGlobalResourceTypes :: Generic IncludeGlobalResourceTypes _
instance showIncludeGlobalResourceTypes :: Show IncludeGlobalResourceTypes where show = genericShow
instance decodeIncludeGlobalResourceTypes :: Decode IncludeGlobalResourceTypes where decode = genericDecode options
instance encodeIncludeGlobalResourceTypes :: Encode IncludeGlobalResourceTypes where encode = genericEncode options



-- | <p>Your Amazon S3 bucket policy does not permit AWS Config to write to it.</p>
newtype InsufficientDeliveryPolicyException = InsufficientDeliveryPolicyException Types.NoArguments
derive instance newtypeInsufficientDeliveryPolicyException :: Newtype InsufficientDeliveryPolicyException _
derive instance repGenericInsufficientDeliveryPolicyException :: Generic InsufficientDeliveryPolicyException _
instance showInsufficientDeliveryPolicyException :: Show InsufficientDeliveryPolicyException where show = genericShow
instance decodeInsufficientDeliveryPolicyException :: Decode InsufficientDeliveryPolicyException where decode = genericDecode options
instance encodeInsufficientDeliveryPolicyException :: Encode InsufficientDeliveryPolicyException where encode = genericEncode options



-- | <p>Indicates one of the following errors:</p> <ul> <li> <p>The rule cannot be created because the IAM role assigned to AWS Config lacks permissions to perform the config:Put* action.</p> </li> <li> <p>The AWS Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p> </li> </ul>
newtype InsufficientPermissionsException = InsufficientPermissionsException Types.NoArguments
derive instance newtypeInsufficientPermissionsException :: Newtype InsufficientPermissionsException _
derive instance repGenericInsufficientPermissionsException :: Generic InsufficientPermissionsException _
instance showInsufficientPermissionsException :: Show InsufficientPermissionsException where show = genericShow
instance decodeInsufficientPermissionsException :: Decode InsufficientPermissionsException where decode = genericDecode options
instance encodeInsufficientPermissionsException :: Encode InsufficientPermissionsException where encode = genericEncode options



-- | <p>You have provided a configuration recorder name that is not valid.</p>
newtype InvalidConfigurationRecorderNameException = InvalidConfigurationRecorderNameException Types.NoArguments
derive instance newtypeInvalidConfigurationRecorderNameException :: Newtype InvalidConfigurationRecorderNameException _
derive instance repGenericInvalidConfigurationRecorderNameException :: Generic InvalidConfigurationRecorderNameException _
instance showInvalidConfigurationRecorderNameException :: Show InvalidConfigurationRecorderNameException where show = genericShow
instance decodeInvalidConfigurationRecorderNameException :: Decode InvalidConfigurationRecorderNameException where decode = genericDecode options
instance encodeInvalidConfigurationRecorderNameException :: Encode InvalidConfigurationRecorderNameException where encode = genericEncode options



-- | <p>The specified delivery channel name is not valid.</p>
newtype InvalidDeliveryChannelNameException = InvalidDeliveryChannelNameException Types.NoArguments
derive instance newtypeInvalidDeliveryChannelNameException :: Newtype InvalidDeliveryChannelNameException _
derive instance repGenericInvalidDeliveryChannelNameException :: Generic InvalidDeliveryChannelNameException _
instance showInvalidDeliveryChannelNameException :: Show InvalidDeliveryChannelNameException where show = genericShow
instance decodeInvalidDeliveryChannelNameException :: Decode InvalidDeliveryChannelNameException where decode = genericDecode options
instance encodeInvalidDeliveryChannelNameException :: Encode InvalidDeliveryChannelNameException where encode = genericEncode options



-- | <p>The specified limit is outside the allowable range.</p>
newtype InvalidLimitException = InvalidLimitException Types.NoArguments
derive instance newtypeInvalidLimitException :: Newtype InvalidLimitException _
derive instance repGenericInvalidLimitException :: Generic InvalidLimitException _
instance showInvalidLimitException :: Show InvalidLimitException where show = genericShow
instance decodeInvalidLimitException :: Decode InvalidLimitException where decode = genericDecode options
instance encodeInvalidLimitException :: Encode InvalidLimitException where encode = genericEncode options



-- | <p>The specified next token is invalid. Specify the <code>NextToken</code> string that was returned in the previous response to get the next page of results.</p>
newtype InvalidNextTokenException = InvalidNextTokenException Types.NoArguments
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options



-- | <p>One or more of the specified parameters are invalid. Verify that your parameters are valid and try again.</p>
newtype InvalidParameterValueException = InvalidParameterValueException Types.NoArguments
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where decode = genericDecode options
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where encode = genericEncode options



-- | <p>AWS Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values could also be incorrectly formatted.</p>
newtype InvalidRecordingGroupException = InvalidRecordingGroupException Types.NoArguments
derive instance newtypeInvalidRecordingGroupException :: Newtype InvalidRecordingGroupException _
derive instance repGenericInvalidRecordingGroupException :: Generic InvalidRecordingGroupException _
instance showInvalidRecordingGroupException :: Show InvalidRecordingGroupException where show = genericShow
instance decodeInvalidRecordingGroupException :: Decode InvalidRecordingGroupException where decode = genericDecode options
instance encodeInvalidRecordingGroupException :: Encode InvalidRecordingGroupException where encode = genericEncode options



-- | <p>The specified <code>ResultToken</code> is invalid.</p>
newtype InvalidResultTokenException = InvalidResultTokenException Types.NoArguments
derive instance newtypeInvalidResultTokenException :: Newtype InvalidResultTokenException _
derive instance repGenericInvalidResultTokenException :: Generic InvalidResultTokenException _
instance showInvalidResultTokenException :: Show InvalidResultTokenException where show = genericShow
instance decodeInvalidResultTokenException :: Decode InvalidResultTokenException where decode = genericDecode options
instance encodeInvalidResultTokenException :: Encode InvalidResultTokenException where encode = genericEncode options



-- | <p>You have provided a null or empty role ARN.</p>
newtype InvalidRoleException = InvalidRoleException Types.NoArguments
derive instance newtypeInvalidRoleException :: Newtype InvalidRoleException _
derive instance repGenericInvalidRoleException :: Generic InvalidRoleException _
instance showInvalidRoleException :: Show InvalidRoleException where show = genericShow
instance decodeInvalidRoleException :: Decode InvalidRoleException where decode = genericDecode options
instance encodeInvalidRoleException :: Encode InvalidRoleException where encode = genericEncode options



-- | <p>The specified Amazon S3 key prefix is not valid.</p>
newtype InvalidS3KeyPrefixException = InvalidS3KeyPrefixException Types.NoArguments
derive instance newtypeInvalidS3KeyPrefixException :: Newtype InvalidS3KeyPrefixException _
derive instance repGenericInvalidS3KeyPrefixException :: Generic InvalidS3KeyPrefixException _
instance showInvalidS3KeyPrefixException :: Show InvalidS3KeyPrefixException where show = genericShow
instance decodeInvalidS3KeyPrefixException :: Decode InvalidS3KeyPrefixException where decode = genericDecode options
instance encodeInvalidS3KeyPrefixException :: Encode InvalidS3KeyPrefixException where encode = genericEncode options



-- | <p>The specified Amazon SNS topic does not exist.</p>
newtype InvalidSNSTopicARNException = InvalidSNSTopicARNException Types.NoArguments
derive instance newtypeInvalidSNSTopicARNException :: Newtype InvalidSNSTopicARNException _
derive instance repGenericInvalidSNSTopicARNException :: Generic InvalidSNSTopicARNException _
instance showInvalidSNSTopicARNException :: Show InvalidSNSTopicARNException where show = genericShow
instance decodeInvalidSNSTopicARNException :: Decode InvalidSNSTopicARNException where decode = genericDecode options
instance encodeInvalidSNSTopicARNException :: Encode InvalidSNSTopicARNException where encode = genericEncode options



-- | <p>The specified time range is not valid. The earlier time is not chronologically before the later time.</p>
newtype InvalidTimeRangeException = InvalidTimeRangeException Types.NoArguments
derive instance newtypeInvalidTimeRangeException :: Newtype InvalidTimeRangeException _
derive instance repGenericInvalidTimeRangeException :: Generic InvalidTimeRangeException _
instance showInvalidTimeRangeException :: Show InvalidTimeRangeException where show = genericShow
instance decodeInvalidTimeRangeException :: Decode InvalidTimeRangeException where decode = genericDecode options
instance encodeInvalidTimeRangeException :: Encode InvalidTimeRangeException where encode = genericEncode options



-- | <p>You cannot delete the delivery channel you specified because the configuration recorder is running.</p>
newtype LastDeliveryChannelDeleteFailedException = LastDeliveryChannelDeleteFailedException Types.NoArguments
derive instance newtypeLastDeliveryChannelDeleteFailedException :: Newtype LastDeliveryChannelDeleteFailedException _
derive instance repGenericLastDeliveryChannelDeleteFailedException :: Generic LastDeliveryChannelDeleteFailedException _
instance showLastDeliveryChannelDeleteFailedException :: Show LastDeliveryChannelDeleteFailedException where show = genericShow
instance decodeLastDeliveryChannelDeleteFailedException :: Decode LastDeliveryChannelDeleteFailedException where decode = genericDecode options
instance encodeLastDeliveryChannelDeleteFailedException :: Encode LastDeliveryChannelDeleteFailedException where encode = genericEncode options



newtype LaterTime = LaterTime Types.Timestamp
derive instance newtypeLaterTime :: Newtype LaterTime _
derive instance repGenericLaterTime :: Generic LaterTime _
instance showLaterTime :: Show LaterTime where show = genericShow
instance decodeLaterTime :: Decode LaterTime where decode = genericDecode options
instance encodeLaterTime :: Encode LaterTime where encode = genericEncode options



newtype Limit = Limit Int
derive instance newtypeLimit :: Newtype Limit _
derive instance repGenericLimit :: Generic Limit _
instance showLimit :: Show Limit where show = genericShow
instance decodeLimit :: Decode Limit where decode = genericDecode options
instance encodeLimit :: Encode Limit where encode = genericEncode options



-- | <p>This exception is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per minute.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



-- | <p/>
newtype ListDiscoveredResourcesRequest = ListDiscoveredResourcesRequest 
  { "resourceType" :: (ResourceType)
  , "resourceIds" :: NullOrUndefined (ResourceIdList)
  , "resourceName" :: NullOrUndefined (ResourceName)
  , "limit" :: NullOrUndefined (Limit)
  , "includeDeletedResources" :: NullOrUndefined (Boolean)
  , "nextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListDiscoveredResourcesRequest :: Newtype ListDiscoveredResourcesRequest _
derive instance repGenericListDiscoveredResourcesRequest :: Generic ListDiscoveredResourcesRequest _
instance showListDiscoveredResourcesRequest :: Show ListDiscoveredResourcesRequest where show = genericShow
instance decodeListDiscoveredResourcesRequest :: Decode ListDiscoveredResourcesRequest where decode = genericDecode options
instance encodeListDiscoveredResourcesRequest :: Encode ListDiscoveredResourcesRequest where encode = genericEncode options

-- | Constructs ListDiscoveredResourcesRequest from required parameters
newListDiscoveredResourcesRequest :: ResourceType -> ListDiscoveredResourcesRequest
newListDiscoveredResourcesRequest _resourceType = ListDiscoveredResourcesRequest { "resourceType": _resourceType, "includeDeletedResources": (NullOrUndefined Nothing), "limit": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "resourceIds": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing) }

-- | Constructs ListDiscoveredResourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDiscoveredResourcesRequest' :: ResourceType -> ( { "resourceType" :: (ResourceType) , "resourceIds" :: NullOrUndefined (ResourceIdList) , "resourceName" :: NullOrUndefined (ResourceName) , "limit" :: NullOrUndefined (Limit) , "includeDeletedResources" :: NullOrUndefined (Boolean) , "nextToken" :: NullOrUndefined (NextToken) } -> {"resourceType" :: (ResourceType) , "resourceIds" :: NullOrUndefined (ResourceIdList) , "resourceName" :: NullOrUndefined (ResourceName) , "limit" :: NullOrUndefined (Limit) , "includeDeletedResources" :: NullOrUndefined (Boolean) , "nextToken" :: NullOrUndefined (NextToken) } ) -> ListDiscoveredResourcesRequest
newListDiscoveredResourcesRequest' _resourceType customize = (ListDiscoveredResourcesRequest <<< customize) { "resourceType": _resourceType, "includeDeletedResources": (NullOrUndefined Nothing), "limit": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "resourceIds": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing) }



-- | <p/>
newtype ListDiscoveredResourcesResponse = ListDiscoveredResourcesResponse 
  { "resourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList)
  , "nextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListDiscoveredResourcesResponse :: Newtype ListDiscoveredResourcesResponse _
derive instance repGenericListDiscoveredResourcesResponse :: Generic ListDiscoveredResourcesResponse _
instance showListDiscoveredResourcesResponse :: Show ListDiscoveredResourcesResponse where show = genericShow
instance decodeListDiscoveredResourcesResponse :: Decode ListDiscoveredResourcesResponse where decode = genericDecode options
instance encodeListDiscoveredResourcesResponse :: Encode ListDiscoveredResourcesResponse where encode = genericEncode options

-- | Constructs ListDiscoveredResourcesResponse from required parameters
newListDiscoveredResourcesResponse :: ListDiscoveredResourcesResponse
newListDiscoveredResourcesResponse  = ListDiscoveredResourcesResponse { "nextToken": (NullOrUndefined Nothing), "resourceIdentifiers": (NullOrUndefined Nothing) }

-- | Constructs ListDiscoveredResourcesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDiscoveredResourcesResponse' :: ( { "resourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList) , "nextToken" :: NullOrUndefined (NextToken) } -> {"resourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList) , "nextToken" :: NullOrUndefined (NextToken) } ) -> ListDiscoveredResourcesResponse
newListDiscoveredResourcesResponse'  customize = (ListDiscoveredResourcesResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "resourceIdentifiers": (NullOrUndefined Nothing) }



-- | <p>Failed to add the AWS Config rule because the account already contains the maximum number of 50 rules. Consider deleting any deactivated rules before adding new rules.</p>
newtype MaxNumberOfConfigRulesExceededException = MaxNumberOfConfigRulesExceededException Types.NoArguments
derive instance newtypeMaxNumberOfConfigRulesExceededException :: Newtype MaxNumberOfConfigRulesExceededException _
derive instance repGenericMaxNumberOfConfigRulesExceededException :: Generic MaxNumberOfConfigRulesExceededException _
instance showMaxNumberOfConfigRulesExceededException :: Show MaxNumberOfConfigRulesExceededException where show = genericShow
instance decodeMaxNumberOfConfigRulesExceededException :: Decode MaxNumberOfConfigRulesExceededException where decode = genericDecode options
instance encodeMaxNumberOfConfigRulesExceededException :: Encode MaxNumberOfConfigRulesExceededException where encode = genericEncode options



-- | <p>You have reached the limit on the number of recorders you can create.</p>
newtype MaxNumberOfConfigurationRecordersExceededException = MaxNumberOfConfigurationRecordersExceededException Types.NoArguments
derive instance newtypeMaxNumberOfConfigurationRecordersExceededException :: Newtype MaxNumberOfConfigurationRecordersExceededException _
derive instance repGenericMaxNumberOfConfigurationRecordersExceededException :: Generic MaxNumberOfConfigurationRecordersExceededException _
instance showMaxNumberOfConfigurationRecordersExceededException :: Show MaxNumberOfConfigurationRecordersExceededException where show = genericShow
instance decodeMaxNumberOfConfigurationRecordersExceededException :: Decode MaxNumberOfConfigurationRecordersExceededException where decode = genericDecode options
instance encodeMaxNumberOfConfigurationRecordersExceededException :: Encode MaxNumberOfConfigurationRecordersExceededException where encode = genericEncode options



-- | <p>You have reached the limit on the number of delivery channels you can create.</p>
newtype MaxNumberOfDeliveryChannelsExceededException = MaxNumberOfDeliveryChannelsExceededException Types.NoArguments
derive instance newtypeMaxNumberOfDeliveryChannelsExceededException :: Newtype MaxNumberOfDeliveryChannelsExceededException _
derive instance repGenericMaxNumberOfDeliveryChannelsExceededException :: Generic MaxNumberOfDeliveryChannelsExceededException _
instance showMaxNumberOfDeliveryChannelsExceededException :: Show MaxNumberOfDeliveryChannelsExceededException where show = genericShow
instance decodeMaxNumberOfDeliveryChannelsExceededException :: Decode MaxNumberOfDeliveryChannelsExceededException where decode = genericDecode options
instance encodeMaxNumberOfDeliveryChannelsExceededException :: Encode MaxNumberOfDeliveryChannelsExceededException where encode = genericEncode options



newtype MaximumExecutionFrequency = MaximumExecutionFrequency String
derive instance newtypeMaximumExecutionFrequency :: Newtype MaximumExecutionFrequency _
derive instance repGenericMaximumExecutionFrequency :: Generic MaximumExecutionFrequency _
instance showMaximumExecutionFrequency :: Show MaximumExecutionFrequency where show = genericShow
instance decodeMaximumExecutionFrequency :: Decode MaximumExecutionFrequency where decode = genericDecode options
instance encodeMaximumExecutionFrequency :: Encode MaximumExecutionFrequency where encode = genericEncode options



newtype MessageType = MessageType String
derive instance newtypeMessageType :: Newtype MessageType _
derive instance repGenericMessageType :: Generic MessageType _
instance showMessageType :: Show MessageType where show = genericShow
instance decodeMessageType :: Decode MessageType where decode = genericDecode options
instance encodeMessageType :: Encode MessageType where encode = genericEncode options



newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where show = genericShow
instance decodeName :: Decode Name where decode = genericDecode options
instance encodeName :: Encode Name where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.</p>
newtype NoAvailableConfigurationRecorderException = NoAvailableConfigurationRecorderException Types.NoArguments
derive instance newtypeNoAvailableConfigurationRecorderException :: Newtype NoAvailableConfigurationRecorderException _
derive instance repGenericNoAvailableConfigurationRecorderException :: Generic NoAvailableConfigurationRecorderException _
instance showNoAvailableConfigurationRecorderException :: Show NoAvailableConfigurationRecorderException where show = genericShow
instance decodeNoAvailableConfigurationRecorderException :: Decode NoAvailableConfigurationRecorderException where decode = genericDecode options
instance encodeNoAvailableConfigurationRecorderException :: Encode NoAvailableConfigurationRecorderException where encode = genericEncode options



-- | <p>There is no delivery channel available to record configurations.</p>
newtype NoAvailableDeliveryChannelException = NoAvailableDeliveryChannelException Types.NoArguments
derive instance newtypeNoAvailableDeliveryChannelException :: Newtype NoAvailableDeliveryChannelException _
derive instance repGenericNoAvailableDeliveryChannelException :: Generic NoAvailableDeliveryChannelException _
instance showNoAvailableDeliveryChannelException :: Show NoAvailableDeliveryChannelException where show = genericShow
instance decodeNoAvailableDeliveryChannelException :: Decode NoAvailableDeliveryChannelException where decode = genericDecode options
instance encodeNoAvailableDeliveryChannelException :: Encode NoAvailableDeliveryChannelException where encode = genericEncode options



-- | <p>There is no configuration recorder running.</p>
newtype NoRunningConfigurationRecorderException = NoRunningConfigurationRecorderException Types.NoArguments
derive instance newtypeNoRunningConfigurationRecorderException :: Newtype NoRunningConfigurationRecorderException _
derive instance repGenericNoRunningConfigurationRecorderException :: Generic NoRunningConfigurationRecorderException _
instance showNoRunningConfigurationRecorderException :: Show NoRunningConfigurationRecorderException where show = genericShow
instance decodeNoRunningConfigurationRecorderException :: Decode NoRunningConfigurationRecorderException where decode = genericDecode options
instance encodeNoRunningConfigurationRecorderException :: Encode NoRunningConfigurationRecorderException where encode = genericEncode options



-- | <p>The specified Amazon S3 bucket does not exist.</p>
newtype NoSuchBucketException = NoSuchBucketException Types.NoArguments
derive instance newtypeNoSuchBucketException :: Newtype NoSuchBucketException _
derive instance repGenericNoSuchBucketException :: Generic NoSuchBucketException _
instance showNoSuchBucketException :: Show NoSuchBucketException where show = genericShow
instance decodeNoSuchBucketException :: Decode NoSuchBucketException where decode = genericDecode options
instance encodeNoSuchBucketException :: Encode NoSuchBucketException where encode = genericEncode options



-- | <p>One or more AWS Config rules in the request are invalid. Verify that the rule names are correct and try again.</p>
newtype NoSuchConfigRuleException = NoSuchConfigRuleException Types.NoArguments
derive instance newtypeNoSuchConfigRuleException :: Newtype NoSuchConfigRuleException _
derive instance repGenericNoSuchConfigRuleException :: Generic NoSuchConfigRuleException _
instance showNoSuchConfigRuleException :: Show NoSuchConfigRuleException where show = genericShow
instance decodeNoSuchConfigRuleException :: Decode NoSuchConfigRuleException where decode = genericDecode options
instance encodeNoSuchConfigRuleException :: Encode NoSuchConfigRuleException where encode = genericEncode options



-- | <p>You have specified a configuration recorder that does not exist.</p>
newtype NoSuchConfigurationRecorderException = NoSuchConfigurationRecorderException Types.NoArguments
derive instance newtypeNoSuchConfigurationRecorderException :: Newtype NoSuchConfigurationRecorderException _
derive instance repGenericNoSuchConfigurationRecorderException :: Generic NoSuchConfigurationRecorderException _
instance showNoSuchConfigurationRecorderException :: Show NoSuchConfigurationRecorderException where show = genericShow
instance decodeNoSuchConfigurationRecorderException :: Decode NoSuchConfigurationRecorderException where decode = genericDecode options
instance encodeNoSuchConfigurationRecorderException :: Encode NoSuchConfigurationRecorderException where encode = genericEncode options



-- | <p>You have specified a delivery channel that does not exist.</p>
newtype NoSuchDeliveryChannelException = NoSuchDeliveryChannelException Types.NoArguments
derive instance newtypeNoSuchDeliveryChannelException :: Newtype NoSuchDeliveryChannelException _
derive instance repGenericNoSuchDeliveryChannelException :: Generic NoSuchDeliveryChannelException _
instance showNoSuchDeliveryChannelException :: Show NoSuchDeliveryChannelException where show = genericShow
instance decodeNoSuchDeliveryChannelException :: Decode NoSuchDeliveryChannelException where decode = genericDecode options
instance encodeNoSuchDeliveryChannelException :: Encode NoSuchDeliveryChannelException where encode = genericEncode options



newtype OrderingTimestamp = OrderingTimestamp Types.Timestamp
derive instance newtypeOrderingTimestamp :: Newtype OrderingTimestamp _
derive instance repGenericOrderingTimestamp :: Generic OrderingTimestamp _
instance showOrderingTimestamp :: Show OrderingTimestamp where show = genericShow
instance decodeOrderingTimestamp :: Decode OrderingTimestamp where decode = genericDecode options
instance encodeOrderingTimestamp :: Encode OrderingTimestamp where encode = genericEncode options



newtype Owner = Owner String
derive instance newtypeOwner :: Newtype Owner _
derive instance repGenericOwner :: Generic Owner _
instance showOwner :: Show Owner where show = genericShow
instance decodeOwner :: Decode Owner where decode = genericDecode options
instance encodeOwner :: Encode Owner where encode = genericEncode options



newtype PutConfigRuleRequest = PutConfigRuleRequest 
  { "ConfigRule" :: (ConfigRule)
  }
derive instance newtypePutConfigRuleRequest :: Newtype PutConfigRuleRequest _
derive instance repGenericPutConfigRuleRequest :: Generic PutConfigRuleRequest _
instance showPutConfigRuleRequest :: Show PutConfigRuleRequest where show = genericShow
instance decodePutConfigRuleRequest :: Decode PutConfigRuleRequest where decode = genericDecode options
instance encodePutConfigRuleRequest :: Encode PutConfigRuleRequest where encode = genericEncode options

-- | Constructs PutConfigRuleRequest from required parameters
newPutConfigRuleRequest :: ConfigRule -> PutConfigRuleRequest
newPutConfigRuleRequest _ConfigRule = PutConfigRuleRequest { "ConfigRule": _ConfigRule }

-- | Constructs PutConfigRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutConfigRuleRequest' :: ConfigRule -> ( { "ConfigRule" :: (ConfigRule) } -> {"ConfigRule" :: (ConfigRule) } ) -> PutConfigRuleRequest
newPutConfigRuleRequest' _ConfigRule customize = (PutConfigRuleRequest <<< customize) { "ConfigRule": _ConfigRule }



-- | <p>The input for the <a>PutConfigurationRecorder</a> action.</p>
newtype PutConfigurationRecorderRequest = PutConfigurationRecorderRequest 
  { "ConfigurationRecorder" :: (ConfigurationRecorder)
  }
derive instance newtypePutConfigurationRecorderRequest :: Newtype PutConfigurationRecorderRequest _
derive instance repGenericPutConfigurationRecorderRequest :: Generic PutConfigurationRecorderRequest _
instance showPutConfigurationRecorderRequest :: Show PutConfigurationRecorderRequest where show = genericShow
instance decodePutConfigurationRecorderRequest :: Decode PutConfigurationRecorderRequest where decode = genericDecode options
instance encodePutConfigurationRecorderRequest :: Encode PutConfigurationRecorderRequest where encode = genericEncode options

-- | Constructs PutConfigurationRecorderRequest from required parameters
newPutConfigurationRecorderRequest :: ConfigurationRecorder -> PutConfigurationRecorderRequest
newPutConfigurationRecorderRequest _ConfigurationRecorder = PutConfigurationRecorderRequest { "ConfigurationRecorder": _ConfigurationRecorder }

-- | Constructs PutConfigurationRecorderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutConfigurationRecorderRequest' :: ConfigurationRecorder -> ( { "ConfigurationRecorder" :: (ConfigurationRecorder) } -> {"ConfigurationRecorder" :: (ConfigurationRecorder) } ) -> PutConfigurationRecorderRequest
newPutConfigurationRecorderRequest' _ConfigurationRecorder customize = (PutConfigurationRecorderRequest <<< customize) { "ConfigurationRecorder": _ConfigurationRecorder }



-- | <p>The input for the <a>PutDeliveryChannel</a> action.</p>
newtype PutDeliveryChannelRequest = PutDeliveryChannelRequest 
  { "DeliveryChannel" :: (DeliveryChannel)
  }
derive instance newtypePutDeliveryChannelRequest :: Newtype PutDeliveryChannelRequest _
derive instance repGenericPutDeliveryChannelRequest :: Generic PutDeliveryChannelRequest _
instance showPutDeliveryChannelRequest :: Show PutDeliveryChannelRequest where show = genericShow
instance decodePutDeliveryChannelRequest :: Decode PutDeliveryChannelRequest where decode = genericDecode options
instance encodePutDeliveryChannelRequest :: Encode PutDeliveryChannelRequest where encode = genericEncode options

-- | Constructs PutDeliveryChannelRequest from required parameters
newPutDeliveryChannelRequest :: DeliveryChannel -> PutDeliveryChannelRequest
newPutDeliveryChannelRequest _DeliveryChannel = PutDeliveryChannelRequest { "DeliveryChannel": _DeliveryChannel }

-- | Constructs PutDeliveryChannelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutDeliveryChannelRequest' :: DeliveryChannel -> ( { "DeliveryChannel" :: (DeliveryChannel) } -> {"DeliveryChannel" :: (DeliveryChannel) } ) -> PutDeliveryChannelRequest
newPutDeliveryChannelRequest' _DeliveryChannel customize = (PutDeliveryChannelRequest <<< customize) { "DeliveryChannel": _DeliveryChannel }



-- | <p/>
newtype PutEvaluationsRequest = PutEvaluationsRequest 
  { "Evaluations" :: NullOrUndefined (Evaluations)
  , "ResultToken" :: (String)
  , "TestMode" :: NullOrUndefined (Boolean)
  }
derive instance newtypePutEvaluationsRequest :: Newtype PutEvaluationsRequest _
derive instance repGenericPutEvaluationsRequest :: Generic PutEvaluationsRequest _
instance showPutEvaluationsRequest :: Show PutEvaluationsRequest where show = genericShow
instance decodePutEvaluationsRequest :: Decode PutEvaluationsRequest where decode = genericDecode options
instance encodePutEvaluationsRequest :: Encode PutEvaluationsRequest where encode = genericEncode options

-- | Constructs PutEvaluationsRequest from required parameters
newPutEvaluationsRequest :: String -> PutEvaluationsRequest
newPutEvaluationsRequest _ResultToken = PutEvaluationsRequest { "ResultToken": _ResultToken, "Evaluations": (NullOrUndefined Nothing), "TestMode": (NullOrUndefined Nothing) }

-- | Constructs PutEvaluationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutEvaluationsRequest' :: String -> ( { "Evaluations" :: NullOrUndefined (Evaluations) , "ResultToken" :: (String) , "TestMode" :: NullOrUndefined (Boolean) } -> {"Evaluations" :: NullOrUndefined (Evaluations) , "ResultToken" :: (String) , "TestMode" :: NullOrUndefined (Boolean) } ) -> PutEvaluationsRequest
newPutEvaluationsRequest' _ResultToken customize = (PutEvaluationsRequest <<< customize) { "ResultToken": _ResultToken, "Evaluations": (NullOrUndefined Nothing), "TestMode": (NullOrUndefined Nothing) }



-- | <p/>
newtype PutEvaluationsResponse = PutEvaluationsResponse 
  { "FailedEvaluations" :: NullOrUndefined (Evaluations)
  }
derive instance newtypePutEvaluationsResponse :: Newtype PutEvaluationsResponse _
derive instance repGenericPutEvaluationsResponse :: Generic PutEvaluationsResponse _
instance showPutEvaluationsResponse :: Show PutEvaluationsResponse where show = genericShow
instance decodePutEvaluationsResponse :: Decode PutEvaluationsResponse where decode = genericDecode options
instance encodePutEvaluationsResponse :: Encode PutEvaluationsResponse where encode = genericEncode options

-- | Constructs PutEvaluationsResponse from required parameters
newPutEvaluationsResponse :: PutEvaluationsResponse
newPutEvaluationsResponse  = PutEvaluationsResponse { "FailedEvaluations": (NullOrUndefined Nothing) }

-- | Constructs PutEvaluationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutEvaluationsResponse' :: ( { "FailedEvaluations" :: NullOrUndefined (Evaluations) } -> {"FailedEvaluations" :: NullOrUndefined (Evaluations) } ) -> PutEvaluationsResponse
newPutEvaluationsResponse'  customize = (PutEvaluationsResponse <<< customize) { "FailedEvaluations": (NullOrUndefined Nothing) }



newtype RecorderName = RecorderName String
derive instance newtypeRecorderName :: Newtype RecorderName _
derive instance repGenericRecorderName :: Generic RecorderName _
instance showRecorderName :: Show RecorderName where show = genericShow
instance decodeRecorderName :: Decode RecorderName where decode = genericDecode options
instance encodeRecorderName :: Encode RecorderName where encode = genericEncode options



newtype RecorderStatus = RecorderStatus String
derive instance newtypeRecorderStatus :: Newtype RecorderStatus _
derive instance repGenericRecorderStatus :: Generic RecorderStatus _
instance showRecorderStatus :: Show RecorderStatus where show = genericShow
instance decodeRecorderStatus :: Decode RecorderStatus where decode = genericDecode options
instance encodeRecorderStatus :: Encode RecorderStatus where encode = genericEncode options



-- | <p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported resource types</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources AWS Config Records</a>.</p>
newtype RecordingGroup = RecordingGroup 
  { "allSupported" :: NullOrUndefined (AllSupported)
  , "includeGlobalResourceTypes" :: NullOrUndefined (IncludeGlobalResourceTypes)
  , "resourceTypes" :: NullOrUndefined (ResourceTypeList)
  }
derive instance newtypeRecordingGroup :: Newtype RecordingGroup _
derive instance repGenericRecordingGroup :: Generic RecordingGroup _
instance showRecordingGroup :: Show RecordingGroup where show = genericShow
instance decodeRecordingGroup :: Decode RecordingGroup where decode = genericDecode options
instance encodeRecordingGroup :: Encode RecordingGroup where encode = genericEncode options

-- | Constructs RecordingGroup from required parameters
newRecordingGroup :: RecordingGroup
newRecordingGroup  = RecordingGroup { "allSupported": (NullOrUndefined Nothing), "includeGlobalResourceTypes": (NullOrUndefined Nothing), "resourceTypes": (NullOrUndefined Nothing) }

-- | Constructs RecordingGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecordingGroup' :: ( { "allSupported" :: NullOrUndefined (AllSupported) , "includeGlobalResourceTypes" :: NullOrUndefined (IncludeGlobalResourceTypes) , "resourceTypes" :: NullOrUndefined (ResourceTypeList) } -> {"allSupported" :: NullOrUndefined (AllSupported) , "includeGlobalResourceTypes" :: NullOrUndefined (IncludeGlobalResourceTypes) , "resourceTypes" :: NullOrUndefined (ResourceTypeList) } ) -> RecordingGroup
newRecordingGroup'  customize = (RecordingGroup <<< customize) { "allSupported": (NullOrUndefined Nothing), "includeGlobalResourceTypes": (NullOrUndefined Nothing), "resourceTypes": (NullOrUndefined Nothing) }



newtype ReevaluateConfigRuleNames = ReevaluateConfigRuleNames (Array StringWithCharLimit64)
derive instance newtypeReevaluateConfigRuleNames :: Newtype ReevaluateConfigRuleNames _
derive instance repGenericReevaluateConfigRuleNames :: Generic ReevaluateConfigRuleNames _
instance showReevaluateConfigRuleNames :: Show ReevaluateConfigRuleNames where show = genericShow
instance decodeReevaluateConfigRuleNames :: Decode ReevaluateConfigRuleNames where decode = genericDecode options
instance encodeReevaluateConfigRuleNames :: Encode ReevaluateConfigRuleNames where encode = genericEncode options



newtype RelatedEvent = RelatedEvent String
derive instance newtypeRelatedEvent :: Newtype RelatedEvent _
derive instance repGenericRelatedEvent :: Generic RelatedEvent _
instance showRelatedEvent :: Show RelatedEvent where show = genericShow
instance decodeRelatedEvent :: Decode RelatedEvent where decode = genericDecode options
instance encodeRelatedEvent :: Encode RelatedEvent where encode = genericEncode options



newtype RelatedEventList = RelatedEventList (Array RelatedEvent)
derive instance newtypeRelatedEventList :: Newtype RelatedEventList _
derive instance repGenericRelatedEventList :: Generic RelatedEventList _
instance showRelatedEventList :: Show RelatedEventList where show = genericShow
instance decodeRelatedEventList :: Decode RelatedEventList where decode = genericDecode options
instance encodeRelatedEventList :: Encode RelatedEventList where encode = genericEncode options



-- | <p>The relationship of the related resource to the main resource.</p>
newtype Relationship = Relationship 
  { "resourceType" :: NullOrUndefined (ResourceType)
  , "resourceId" :: NullOrUndefined (ResourceId)
  , "resourceName" :: NullOrUndefined (ResourceName)
  , "relationshipName" :: NullOrUndefined (RelationshipName)
  }
derive instance newtypeRelationship :: Newtype Relationship _
derive instance repGenericRelationship :: Generic Relationship _
instance showRelationship :: Show Relationship where show = genericShow
instance decodeRelationship :: Decode Relationship where decode = genericDecode options
instance encodeRelationship :: Encode Relationship where encode = genericEncode options

-- | Constructs Relationship from required parameters
newRelationship :: Relationship
newRelationship  = Relationship { "relationshipName": (NullOrUndefined Nothing), "resourceId": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing) }

-- | Constructs Relationship's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRelationship' :: ( { "resourceType" :: NullOrUndefined (ResourceType) , "resourceId" :: NullOrUndefined (ResourceId) , "resourceName" :: NullOrUndefined (ResourceName) , "relationshipName" :: NullOrUndefined (RelationshipName) } -> {"resourceType" :: NullOrUndefined (ResourceType) , "resourceId" :: NullOrUndefined (ResourceId) , "resourceName" :: NullOrUndefined (ResourceName) , "relationshipName" :: NullOrUndefined (RelationshipName) } ) -> Relationship
newRelationship'  customize = (Relationship <<< customize) { "relationshipName": (NullOrUndefined Nothing), "resourceId": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing) }



newtype RelationshipList = RelationshipList (Array Relationship)
derive instance newtypeRelationshipList :: Newtype RelationshipList _
derive instance repGenericRelationshipList :: Generic RelationshipList _
instance showRelationshipList :: Show RelationshipList where show = genericShow
instance decodeRelationshipList :: Decode RelationshipList where decode = genericDecode options
instance encodeRelationshipList :: Encode RelationshipList where encode = genericEncode options



newtype RelationshipName = RelationshipName String
derive instance newtypeRelationshipName :: Newtype RelationshipName _
derive instance repGenericRelationshipName :: Generic RelationshipName _
instance showRelationshipName :: Show RelationshipName where show = genericShow
instance decodeRelationshipName :: Decode RelationshipName where decode = genericDecode options
instance encodeRelationshipName :: Encode RelationshipName where encode = genericEncode options



-- | <p>An object that contains the resource type and the number of resources.</p>
newtype ResourceCount = ResourceCount 
  { "resourceType" :: NullOrUndefined (ResourceType)
  , "count" :: NullOrUndefined (Number)
  }
derive instance newtypeResourceCount :: Newtype ResourceCount _
derive instance repGenericResourceCount :: Generic ResourceCount _
instance showResourceCount :: Show ResourceCount where show = genericShow
instance decodeResourceCount :: Decode ResourceCount where decode = genericDecode options
instance encodeResourceCount :: Encode ResourceCount where encode = genericEncode options

-- | Constructs ResourceCount from required parameters
newResourceCount :: ResourceCount
newResourceCount  = ResourceCount { "count": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing) }

-- | Constructs ResourceCount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceCount' :: ( { "resourceType" :: NullOrUndefined (ResourceType) , "count" :: NullOrUndefined (Number) } -> {"resourceType" :: NullOrUndefined (ResourceType) , "count" :: NullOrUndefined (Number) } ) -> ResourceCount
newResourceCount'  customize = (ResourceCount <<< customize) { "count": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing) }



newtype ResourceCounts = ResourceCounts (Array ResourceCount)
derive instance newtypeResourceCounts :: Newtype ResourceCounts _
derive instance repGenericResourceCounts :: Generic ResourceCounts _
instance showResourceCounts :: Show ResourceCounts where show = genericShow
instance decodeResourceCounts :: Decode ResourceCounts where decode = genericDecode options
instance encodeResourceCounts :: Encode ResourceCounts where encode = genericEncode options



newtype ResourceCreationTime = ResourceCreationTime Types.Timestamp
derive instance newtypeResourceCreationTime :: Newtype ResourceCreationTime _
derive instance repGenericResourceCreationTime :: Generic ResourceCreationTime _
instance showResourceCreationTime :: Show ResourceCreationTime where show = genericShow
instance decodeResourceCreationTime :: Decode ResourceCreationTime where decode = genericDecode options
instance encodeResourceCreationTime :: Encode ResourceCreationTime where encode = genericEncode options



newtype ResourceDeletionTime = ResourceDeletionTime Types.Timestamp
derive instance newtypeResourceDeletionTime :: Newtype ResourceDeletionTime _
derive instance repGenericResourceDeletionTime :: Generic ResourceDeletionTime _
instance showResourceDeletionTime :: Show ResourceDeletionTime where show = genericShow
instance decodeResourceDeletionTime :: Decode ResourceDeletionTime where decode = genericDecode options
instance encodeResourceDeletionTime :: Encode ResourceDeletionTime where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



newtype ResourceIdList = ResourceIdList (Array ResourceId)
derive instance newtypeResourceIdList :: Newtype ResourceIdList _
derive instance repGenericResourceIdList :: Generic ResourceIdList _
instance showResourceIdList :: Show ResourceIdList where show = genericShow
instance decodeResourceIdList :: Decode ResourceIdList where decode = genericDecode options
instance encodeResourceIdList :: Encode ResourceIdList where encode = genericEncode options



-- | <p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>
newtype ResourceIdentifier = ResourceIdentifier 
  { "resourceType" :: NullOrUndefined (ResourceType)
  , "resourceId" :: NullOrUndefined (ResourceId)
  , "resourceName" :: NullOrUndefined (ResourceName)
  , "resourceDeletionTime" :: NullOrUndefined (ResourceDeletionTime)
  }
derive instance newtypeResourceIdentifier :: Newtype ResourceIdentifier _
derive instance repGenericResourceIdentifier :: Generic ResourceIdentifier _
instance showResourceIdentifier :: Show ResourceIdentifier where show = genericShow
instance decodeResourceIdentifier :: Decode ResourceIdentifier where decode = genericDecode options
instance encodeResourceIdentifier :: Encode ResourceIdentifier where encode = genericEncode options

-- | Constructs ResourceIdentifier from required parameters
newResourceIdentifier :: ResourceIdentifier
newResourceIdentifier  = ResourceIdentifier { "resourceDeletionTime": (NullOrUndefined Nothing), "resourceId": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing) }

-- | Constructs ResourceIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceIdentifier' :: ( { "resourceType" :: NullOrUndefined (ResourceType) , "resourceId" :: NullOrUndefined (ResourceId) , "resourceName" :: NullOrUndefined (ResourceName) , "resourceDeletionTime" :: NullOrUndefined (ResourceDeletionTime) } -> {"resourceType" :: NullOrUndefined (ResourceType) , "resourceId" :: NullOrUndefined (ResourceId) , "resourceName" :: NullOrUndefined (ResourceName) , "resourceDeletionTime" :: NullOrUndefined (ResourceDeletionTime) } ) -> ResourceIdentifier
newResourceIdentifier'  customize = (ResourceIdentifier <<< customize) { "resourceDeletionTime": (NullOrUndefined Nothing), "resourceId": (NullOrUndefined Nothing), "resourceName": (NullOrUndefined Nothing), "resourceType": (NullOrUndefined Nothing) }



newtype ResourceIdentifierList = ResourceIdentifierList (Array ResourceIdentifier)
derive instance newtypeResourceIdentifierList :: Newtype ResourceIdentifierList _
derive instance repGenericResourceIdentifierList :: Generic ResourceIdentifierList _
instance showResourceIdentifierList :: Show ResourceIdentifierList where show = genericShow
instance decodeResourceIdentifierList :: Decode ResourceIdentifierList where decode = genericDecode options
instance encodeResourceIdentifierList :: Encode ResourceIdentifierList where encode = genericEncode options



-- | <p>The rule is currently being deleted or the rule is deleting your evaluation results. Try your request again later.</p>
newtype ResourceInUseException = ResourceInUseException Types.NoArguments
derive instance newtypeResourceInUseException :: Newtype ResourceInUseException _
derive instance repGenericResourceInUseException :: Generic ResourceInUseException _
instance showResourceInUseException :: Show ResourceInUseException where show = genericShow
instance decodeResourceInUseException :: Decode ResourceInUseException where decode = genericDecode options
instance encodeResourceInUseException :: Encode ResourceInUseException where encode = genericEncode options



newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where show = genericShow
instance decodeResourceName :: Decode ResourceName where decode = genericDecode options
instance encodeResourceName :: Encode ResourceName where encode = genericEncode options



-- | <p>You have specified a resource that is either unknown or has not been discovered.</p>
newtype ResourceNotDiscoveredException = ResourceNotDiscoveredException Types.NoArguments
derive instance newtypeResourceNotDiscoveredException :: Newtype ResourceNotDiscoveredException _
derive instance repGenericResourceNotDiscoveredException :: Generic ResourceNotDiscoveredException _
instance showResourceNotDiscoveredException :: Show ResourceNotDiscoveredException where show = genericShow
instance decodeResourceNotDiscoveredException :: Decode ResourceNotDiscoveredException where decode = genericDecode options
instance encodeResourceNotDiscoveredException :: Encode ResourceNotDiscoveredException where encode = genericEncode options



newtype ResourceType = ResourceType String
derive instance newtypeResourceType :: Newtype ResourceType _
derive instance repGenericResourceType :: Generic ResourceType _
instance showResourceType :: Show ResourceType where show = genericShow
instance decodeResourceType :: Decode ResourceType where decode = genericDecode options
instance encodeResourceType :: Encode ResourceType where encode = genericEncode options



newtype ResourceTypeList = ResourceTypeList (Array ResourceType)
derive instance newtypeResourceTypeList :: Newtype ResourceTypeList _
derive instance repGenericResourceTypeList :: Generic ResourceTypeList _
instance showResourceTypeList :: Show ResourceTypeList where show = genericShow
instance decodeResourceTypeList :: Decode ResourceTypeList where decode = genericDecode options
instance encodeResourceTypeList :: Encode ResourceTypeList where encode = genericEncode options



newtype ResourceTypes = ResourceTypes (Array StringWithCharLimit256)
derive instance newtypeResourceTypes :: Newtype ResourceTypes _
derive instance repGenericResourceTypes :: Generic ResourceTypes _
instance showResourceTypes :: Show ResourceTypes where show = genericShow
instance decodeResourceTypes :: Decode ResourceTypes where decode = genericDecode options
instance encodeResourceTypes :: Encode ResourceTypes where encode = genericEncode options



newtype RuleLimit = RuleLimit Int
derive instance newtypeRuleLimit :: Newtype RuleLimit _
derive instance repGenericRuleLimit :: Generic RuleLimit _
instance showRuleLimit :: Show RuleLimit where show = genericShow
instance decodeRuleLimit :: Decode RuleLimit where decode = genericDecode options
instance encodeRuleLimit :: Encode RuleLimit where encode = genericEncode options



-- | <p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>
newtype Scope = Scope 
  { "ComplianceResourceTypes" :: NullOrUndefined (ComplianceResourceTypes)
  , "TagKey" :: NullOrUndefined (StringWithCharLimit128)
  , "TagValue" :: NullOrUndefined (StringWithCharLimit256)
  , "ComplianceResourceId" :: NullOrUndefined (BaseResourceId)
  }
derive instance newtypeScope :: Newtype Scope _
derive instance repGenericScope :: Generic Scope _
instance showScope :: Show Scope where show = genericShow
instance decodeScope :: Decode Scope where decode = genericDecode options
instance encodeScope :: Encode Scope where encode = genericEncode options

-- | Constructs Scope from required parameters
newScope :: Scope
newScope  = Scope { "ComplianceResourceId": (NullOrUndefined Nothing), "ComplianceResourceTypes": (NullOrUndefined Nothing), "TagKey": (NullOrUndefined Nothing), "TagValue": (NullOrUndefined Nothing) }

-- | Constructs Scope's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScope' :: ( { "ComplianceResourceTypes" :: NullOrUndefined (ComplianceResourceTypes) , "TagKey" :: NullOrUndefined (StringWithCharLimit128) , "TagValue" :: NullOrUndefined (StringWithCharLimit256) , "ComplianceResourceId" :: NullOrUndefined (BaseResourceId) } -> {"ComplianceResourceTypes" :: NullOrUndefined (ComplianceResourceTypes) , "TagKey" :: NullOrUndefined (StringWithCharLimit128) , "TagValue" :: NullOrUndefined (StringWithCharLimit256) , "ComplianceResourceId" :: NullOrUndefined (BaseResourceId) } ) -> Scope
newScope'  customize = (Scope <<< customize) { "ComplianceResourceId": (NullOrUndefined Nothing), "ComplianceResourceTypes": (NullOrUndefined Nothing), "TagKey": (NullOrUndefined Nothing), "TagValue": (NullOrUndefined Nothing) }



-- | <p>Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.</p>
newtype Source = Source 
  { "Owner" :: (Owner)
  , "SourceIdentifier" :: (StringWithCharLimit256)
  , "SourceDetails" :: NullOrUndefined (SourceDetails)
  }
derive instance newtypeSource :: Newtype Source _
derive instance repGenericSource :: Generic Source _
instance showSource :: Show Source where show = genericShow
instance decodeSource :: Decode Source where decode = genericDecode options
instance encodeSource :: Encode Source where encode = genericEncode options

-- | Constructs Source from required parameters
newSource :: Owner -> StringWithCharLimit256 -> Source
newSource _Owner _SourceIdentifier = Source { "Owner": _Owner, "SourceIdentifier": _SourceIdentifier, "SourceDetails": (NullOrUndefined Nothing) }

-- | Constructs Source's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSource' :: Owner -> StringWithCharLimit256 -> ( { "Owner" :: (Owner) , "SourceIdentifier" :: (StringWithCharLimit256) , "SourceDetails" :: NullOrUndefined (SourceDetails) } -> {"Owner" :: (Owner) , "SourceIdentifier" :: (StringWithCharLimit256) , "SourceDetails" :: NullOrUndefined (SourceDetails) } ) -> Source
newSource' _Owner _SourceIdentifier customize = (Source <<< customize) { "Owner": _Owner, "SourceIdentifier": _SourceIdentifier, "SourceDetails": (NullOrUndefined Nothing) }



-- | <p>Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for <code>SourceDetail</code> only for custom rules. </p>
newtype SourceDetail = SourceDetail 
  { "EventSource" :: NullOrUndefined (EventSource)
  , "MessageType" :: NullOrUndefined (MessageType)
  , "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency)
  }
derive instance newtypeSourceDetail :: Newtype SourceDetail _
derive instance repGenericSourceDetail :: Generic SourceDetail _
instance showSourceDetail :: Show SourceDetail where show = genericShow
instance decodeSourceDetail :: Decode SourceDetail where decode = genericDecode options
instance encodeSourceDetail :: Encode SourceDetail where encode = genericEncode options

-- | Constructs SourceDetail from required parameters
newSourceDetail :: SourceDetail
newSourceDetail  = SourceDetail { "EventSource": (NullOrUndefined Nothing), "MaximumExecutionFrequency": (NullOrUndefined Nothing), "MessageType": (NullOrUndefined Nothing) }

-- | Constructs SourceDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceDetail' :: ( { "EventSource" :: NullOrUndefined (EventSource) , "MessageType" :: NullOrUndefined (MessageType) , "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) } -> {"EventSource" :: NullOrUndefined (EventSource) , "MessageType" :: NullOrUndefined (MessageType) , "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) } ) -> SourceDetail
newSourceDetail'  customize = (SourceDetail <<< customize) { "EventSource": (NullOrUndefined Nothing), "MaximumExecutionFrequency": (NullOrUndefined Nothing), "MessageType": (NullOrUndefined Nothing) }



newtype SourceDetails = SourceDetails (Array SourceDetail)
derive instance newtypeSourceDetails :: Newtype SourceDetails _
derive instance repGenericSourceDetails :: Generic SourceDetails _
instance showSourceDetails :: Show SourceDetails where show = genericShow
instance decodeSourceDetails :: Decode SourceDetails where decode = genericDecode options
instance encodeSourceDetails :: Encode SourceDetails where encode = genericEncode options



-- | <p/>
newtype StartConfigRulesEvaluationRequest = StartConfigRulesEvaluationRequest 
  { "ConfigRuleNames" :: NullOrUndefined (ReevaluateConfigRuleNames)
  }
derive instance newtypeStartConfigRulesEvaluationRequest :: Newtype StartConfigRulesEvaluationRequest _
derive instance repGenericStartConfigRulesEvaluationRequest :: Generic StartConfigRulesEvaluationRequest _
instance showStartConfigRulesEvaluationRequest :: Show StartConfigRulesEvaluationRequest where show = genericShow
instance decodeStartConfigRulesEvaluationRequest :: Decode StartConfigRulesEvaluationRequest where decode = genericDecode options
instance encodeStartConfigRulesEvaluationRequest :: Encode StartConfigRulesEvaluationRequest where encode = genericEncode options

-- | Constructs StartConfigRulesEvaluationRequest from required parameters
newStartConfigRulesEvaluationRequest :: StartConfigRulesEvaluationRequest
newStartConfigRulesEvaluationRequest  = StartConfigRulesEvaluationRequest { "ConfigRuleNames": (NullOrUndefined Nothing) }

-- | Constructs StartConfigRulesEvaluationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartConfigRulesEvaluationRequest' :: ( { "ConfigRuleNames" :: NullOrUndefined (ReevaluateConfigRuleNames) } -> {"ConfigRuleNames" :: NullOrUndefined (ReevaluateConfigRuleNames) } ) -> StartConfigRulesEvaluationRequest
newStartConfigRulesEvaluationRequest'  customize = (StartConfigRulesEvaluationRequest <<< customize) { "ConfigRuleNames": (NullOrUndefined Nothing) }



-- | <p>The output when you start the evaluation for the specified Config rule.</p>
newtype StartConfigRulesEvaluationResponse = StartConfigRulesEvaluationResponse Types.NoArguments
derive instance newtypeStartConfigRulesEvaluationResponse :: Newtype StartConfigRulesEvaluationResponse _
derive instance repGenericStartConfigRulesEvaluationResponse :: Generic StartConfigRulesEvaluationResponse _
instance showStartConfigRulesEvaluationResponse :: Show StartConfigRulesEvaluationResponse where show = genericShow
instance decodeStartConfigRulesEvaluationResponse :: Decode StartConfigRulesEvaluationResponse where decode = genericDecode options
instance encodeStartConfigRulesEvaluationResponse :: Encode StartConfigRulesEvaluationResponse where encode = genericEncode options



-- | <p>The input for the <a>StartConfigurationRecorder</a> action.</p>
newtype StartConfigurationRecorderRequest = StartConfigurationRecorderRequest 
  { "ConfigurationRecorderName" :: (RecorderName)
  }
derive instance newtypeStartConfigurationRecorderRequest :: Newtype StartConfigurationRecorderRequest _
derive instance repGenericStartConfigurationRecorderRequest :: Generic StartConfigurationRecorderRequest _
instance showStartConfigurationRecorderRequest :: Show StartConfigurationRecorderRequest where show = genericShow
instance decodeStartConfigurationRecorderRequest :: Decode StartConfigurationRecorderRequest where decode = genericDecode options
instance encodeStartConfigurationRecorderRequest :: Encode StartConfigurationRecorderRequest where encode = genericEncode options

-- | Constructs StartConfigurationRecorderRequest from required parameters
newStartConfigurationRecorderRequest :: RecorderName -> StartConfigurationRecorderRequest
newStartConfigurationRecorderRequest _ConfigurationRecorderName = StartConfigurationRecorderRequest { "ConfigurationRecorderName": _ConfigurationRecorderName }

-- | Constructs StartConfigurationRecorderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartConfigurationRecorderRequest' :: RecorderName -> ( { "ConfigurationRecorderName" :: (RecorderName) } -> {"ConfigurationRecorderName" :: (RecorderName) } ) -> StartConfigurationRecorderRequest
newStartConfigurationRecorderRequest' _ConfigurationRecorderName customize = (StartConfigurationRecorderRequest <<< customize) { "ConfigurationRecorderName": _ConfigurationRecorderName }



-- | <p>The input for the <a>StopConfigurationRecorder</a> action.</p>
newtype StopConfigurationRecorderRequest = StopConfigurationRecorderRequest 
  { "ConfigurationRecorderName" :: (RecorderName)
  }
derive instance newtypeStopConfigurationRecorderRequest :: Newtype StopConfigurationRecorderRequest _
derive instance repGenericStopConfigurationRecorderRequest :: Generic StopConfigurationRecorderRequest _
instance showStopConfigurationRecorderRequest :: Show StopConfigurationRecorderRequest where show = genericShow
instance decodeStopConfigurationRecorderRequest :: Decode StopConfigurationRecorderRequest where decode = genericDecode options
instance encodeStopConfigurationRecorderRequest :: Encode StopConfigurationRecorderRequest where encode = genericEncode options

-- | Constructs StopConfigurationRecorderRequest from required parameters
newStopConfigurationRecorderRequest :: RecorderName -> StopConfigurationRecorderRequest
newStopConfigurationRecorderRequest _ConfigurationRecorderName = StopConfigurationRecorderRequest { "ConfigurationRecorderName": _ConfigurationRecorderName }

-- | Constructs StopConfigurationRecorderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopConfigurationRecorderRequest' :: RecorderName -> ( { "ConfigurationRecorderName" :: (RecorderName) } -> {"ConfigurationRecorderName" :: (RecorderName) } ) -> StopConfigurationRecorderRequest
newStopConfigurationRecorderRequest' _ConfigurationRecorderName customize = (StopConfigurationRecorderRequest <<< customize) { "ConfigurationRecorderName": _ConfigurationRecorderName }



newtype StringWithCharLimit1024 = StringWithCharLimit1024 String
derive instance newtypeStringWithCharLimit1024 :: Newtype StringWithCharLimit1024 _
derive instance repGenericStringWithCharLimit1024 :: Generic StringWithCharLimit1024 _
instance showStringWithCharLimit1024 :: Show StringWithCharLimit1024 where show = genericShow
instance decodeStringWithCharLimit1024 :: Decode StringWithCharLimit1024 where decode = genericDecode options
instance encodeStringWithCharLimit1024 :: Encode StringWithCharLimit1024 where encode = genericEncode options



newtype StringWithCharLimit128 = StringWithCharLimit128 String
derive instance newtypeStringWithCharLimit128 :: Newtype StringWithCharLimit128 _
derive instance repGenericStringWithCharLimit128 :: Generic StringWithCharLimit128 _
instance showStringWithCharLimit128 :: Show StringWithCharLimit128 where show = genericShow
instance decodeStringWithCharLimit128 :: Decode StringWithCharLimit128 where decode = genericDecode options
instance encodeStringWithCharLimit128 :: Encode StringWithCharLimit128 where encode = genericEncode options



newtype StringWithCharLimit256 = StringWithCharLimit256 String
derive instance newtypeStringWithCharLimit256 :: Newtype StringWithCharLimit256 _
derive instance repGenericStringWithCharLimit256 :: Generic StringWithCharLimit256 _
instance showStringWithCharLimit256 :: Show StringWithCharLimit256 where show = genericShow
instance decodeStringWithCharLimit256 :: Decode StringWithCharLimit256 where decode = genericDecode options
instance encodeStringWithCharLimit256 :: Encode StringWithCharLimit256 where encode = genericEncode options



newtype StringWithCharLimit64 = StringWithCharLimit64 String
derive instance newtypeStringWithCharLimit64 :: Newtype StringWithCharLimit64 _
derive instance repGenericStringWithCharLimit64 :: Generic StringWithCharLimit64 _
instance showStringWithCharLimit64 :: Show StringWithCharLimit64 where show = genericShow
instance decodeStringWithCharLimit64 :: Decode StringWithCharLimit64 where decode = genericDecode options
instance encodeStringWithCharLimit64 :: Encode StringWithCharLimit64 where encode = genericEncode options



newtype SupplementaryConfiguration = SupplementaryConfiguration (StrMap.StrMap SupplementaryConfigurationValue)
derive instance newtypeSupplementaryConfiguration :: Newtype SupplementaryConfiguration _
derive instance repGenericSupplementaryConfiguration :: Generic SupplementaryConfiguration _
instance showSupplementaryConfiguration :: Show SupplementaryConfiguration where show = genericShow
instance decodeSupplementaryConfiguration :: Decode SupplementaryConfiguration where decode = genericDecode options
instance encodeSupplementaryConfiguration :: Encode SupplementaryConfiguration where encode = genericEncode options



newtype SupplementaryConfigurationName = SupplementaryConfigurationName String
derive instance newtypeSupplementaryConfigurationName :: Newtype SupplementaryConfigurationName _
derive instance repGenericSupplementaryConfigurationName :: Generic SupplementaryConfigurationName _
instance showSupplementaryConfigurationName :: Show SupplementaryConfigurationName where show = genericShow
instance decodeSupplementaryConfigurationName :: Decode SupplementaryConfigurationName where decode = genericDecode options
instance encodeSupplementaryConfigurationName :: Encode SupplementaryConfigurationName where encode = genericEncode options



newtype SupplementaryConfigurationValue = SupplementaryConfigurationValue String
derive instance newtypeSupplementaryConfigurationValue :: Newtype SupplementaryConfigurationValue _
derive instance repGenericSupplementaryConfigurationValue :: Generic SupplementaryConfigurationValue _
instance showSupplementaryConfigurationValue :: Show SupplementaryConfigurationValue where show = genericShow
instance decodeSupplementaryConfigurationValue :: Decode SupplementaryConfigurationValue where decode = genericDecode options
instance encodeSupplementaryConfigurationValue :: Encode SupplementaryConfigurationValue where encode = genericEncode options



newtype Tags = Tags (StrMap.StrMap Value)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



-- | <p>The requested action is not valid.</p>
newtype ValidationException = ValidationException Types.NoArguments
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options



newtype Value = Value String
derive instance newtypeValue :: Newtype Value _
derive instance repGenericValue :: Generic Value _
instance showValue :: Show Value where show = genericShow
instance decodeValue :: Decode Value where decode = genericDecode options
instance encodeValue :: Encode Value where encode = genericEncode options



newtype Version = Version String
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where show = genericShow
instance decodeVersion :: Decode Version where decode = genericDecode options
instance encodeVersion :: Encode Version where encode = genericEncode options

