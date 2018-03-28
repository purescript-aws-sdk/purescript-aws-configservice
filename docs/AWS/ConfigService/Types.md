## Module AWS.ConfigService.Types

#### `options`

``` purescript
options :: Options
```

#### `ARN`

``` purescript
newtype ARN
  = ARN String
```

##### Instances
``` purescript
Newtype ARN _
Generic ARN _
Show ARN
Decode ARN
Encode ARN
```

#### `AccountId`

``` purescript
newtype AccountId
  = AccountId String
```

##### Instances
``` purescript
Newtype AccountId _
Generic AccountId _
Show AccountId
Decode AccountId
Encode AccountId
```

#### `AllSupported`

``` purescript
newtype AllSupported
  = AllSupported Boolean
```

##### Instances
``` purescript
Newtype AllSupported _
Generic AllSupported _
Show AllSupported
Decode AllSupported
Encode AllSupported
```

#### `AvailabilityZone`

``` purescript
newtype AvailabilityZone
  = AvailabilityZone String
```

##### Instances
``` purescript
Newtype AvailabilityZone _
Generic AvailabilityZone _
Show AvailabilityZone
Decode AvailabilityZone
Encode AvailabilityZone
```

#### `AwsRegion`

``` purescript
newtype AwsRegion
  = AwsRegion String
```

##### Instances
``` purescript
Newtype AwsRegion _
Generic AwsRegion _
Show AwsRegion
Decode AwsRegion
Encode AwsRegion
```

#### `BaseResourceId`

``` purescript
newtype BaseResourceId
  = BaseResourceId String
```

##### Instances
``` purescript
Newtype BaseResourceId _
Generic BaseResourceId _
Show BaseResourceId
Decode BaseResourceId
Encode BaseResourceId
```

#### `ChannelName`

``` purescript
newtype ChannelName
  = ChannelName String
```

##### Instances
``` purescript
Newtype ChannelName _
Generic ChannelName _
Show ChannelName
Decode ChannelName
Encode ChannelName
```

#### `ChronologicalOrder`

``` purescript
newtype ChronologicalOrder
  = ChronologicalOrder String
```

##### Instances
``` purescript
Newtype ChronologicalOrder _
Generic ChronologicalOrder _
Show ChronologicalOrder
Decode ChronologicalOrder
Encode ChronologicalOrder
```

#### `Compliance`

``` purescript
newtype Compliance
  = Compliance { "ComplianceType" :: NullOrUndefined (ComplianceType), "ComplianceContributorCount" :: NullOrUndefined (ComplianceContributorCount) }
```

<p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>

##### Instances
``` purescript
Newtype Compliance _
Generic Compliance _
Show Compliance
Decode Compliance
Encode Compliance
```

#### `newCompliance`

``` purescript
newCompliance :: Compliance
```

Constructs Compliance from required parameters

#### `newCompliance'`

``` purescript
newCompliance' :: ({ "ComplianceType" :: NullOrUndefined (ComplianceType), "ComplianceContributorCount" :: NullOrUndefined (ComplianceContributorCount) } -> { "ComplianceType" :: NullOrUndefined (ComplianceType), "ComplianceContributorCount" :: NullOrUndefined (ComplianceContributorCount) }) -> Compliance
```

Constructs Compliance's fields from required parameters

#### `ComplianceByConfigRule`

``` purescript
newtype ComplianceByConfigRule
  = ComplianceByConfigRule { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "Compliance" :: NullOrUndefined (Compliance) }
```

<p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it, and it is noncompliant if any of these resources do not comply.</p>

##### Instances
``` purescript
Newtype ComplianceByConfigRule _
Generic ComplianceByConfigRule _
Show ComplianceByConfigRule
Decode ComplianceByConfigRule
Encode ComplianceByConfigRule
```

#### `newComplianceByConfigRule`

``` purescript
newComplianceByConfigRule :: ComplianceByConfigRule
```

Constructs ComplianceByConfigRule from required parameters

#### `newComplianceByConfigRule'`

``` purescript
newComplianceByConfigRule' :: ({ "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "Compliance" :: NullOrUndefined (Compliance) } -> { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "Compliance" :: NullOrUndefined (Compliance) }) -> ComplianceByConfigRule
```

Constructs ComplianceByConfigRule's fields from required parameters

#### `ComplianceByConfigRules`

``` purescript
newtype ComplianceByConfigRules
  = ComplianceByConfigRules (Array ComplianceByConfigRule)
```

##### Instances
``` purescript
Newtype ComplianceByConfigRules _
Generic ComplianceByConfigRules _
Show ComplianceByConfigRules
Decode ComplianceByConfigRules
Encode ComplianceByConfigRules
```

#### `ComplianceByResource`

``` purescript
newtype ComplianceByResource
  = ComplianceByResource { "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId), "Compliance" :: NullOrUndefined (Compliance) }
```

<p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.</p>

##### Instances
``` purescript
Newtype ComplianceByResource _
Generic ComplianceByResource _
Show ComplianceByResource
Decode ComplianceByResource
Encode ComplianceByResource
```

#### `newComplianceByResource`

``` purescript
newComplianceByResource :: ComplianceByResource
```

Constructs ComplianceByResource from required parameters

#### `newComplianceByResource'`

``` purescript
newComplianceByResource' :: ({ "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId), "Compliance" :: NullOrUndefined (Compliance) } -> { "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId), "Compliance" :: NullOrUndefined (Compliance) }) -> ComplianceByResource
```

Constructs ComplianceByResource's fields from required parameters

#### `ComplianceByResources`

``` purescript
newtype ComplianceByResources
  = ComplianceByResources (Array ComplianceByResource)
```

##### Instances
``` purescript
Newtype ComplianceByResources _
Generic ComplianceByResources _
Show ComplianceByResources
Decode ComplianceByResources
Encode ComplianceByResources
```

#### `ComplianceContributorCount`

``` purescript
newtype ComplianceContributorCount
  = ComplianceContributorCount { "CappedCount" :: NullOrUndefined (Int), "CapExceeded" :: NullOrUndefined (Boolean) }
```

<p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.</p>

##### Instances
``` purescript
Newtype ComplianceContributorCount _
Generic ComplianceContributorCount _
Show ComplianceContributorCount
Decode ComplianceContributorCount
Encode ComplianceContributorCount
```

#### `newComplianceContributorCount`

``` purescript
newComplianceContributorCount :: ComplianceContributorCount
```

Constructs ComplianceContributorCount from required parameters

#### `newComplianceContributorCount'`

``` purescript
newComplianceContributorCount' :: ({ "CappedCount" :: NullOrUndefined (Int), "CapExceeded" :: NullOrUndefined (Boolean) } -> { "CappedCount" :: NullOrUndefined (Int), "CapExceeded" :: NullOrUndefined (Boolean) }) -> ComplianceContributorCount
```

Constructs ComplianceContributorCount's fields from required parameters

#### `ComplianceResourceTypes`

``` purescript
newtype ComplianceResourceTypes
  = ComplianceResourceTypes (Array StringWithCharLimit256)
```

##### Instances
``` purescript
Newtype ComplianceResourceTypes _
Generic ComplianceResourceTypes _
Show ComplianceResourceTypes
Decode ComplianceResourceTypes
Encode ComplianceResourceTypes
```

#### `ComplianceSummariesByResourceType`

``` purescript
newtype ComplianceSummariesByResourceType
  = ComplianceSummariesByResourceType (Array ComplianceSummaryByResourceType)
```

##### Instances
``` purescript
Newtype ComplianceSummariesByResourceType _
Generic ComplianceSummariesByResourceType _
Show ComplianceSummariesByResourceType
Decode ComplianceSummariesByResourceType
Encode ComplianceSummariesByResourceType
```

#### `ComplianceSummary`

``` purescript
newtype ComplianceSummary
  = ComplianceSummary { "CompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount), "NonCompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount), "ComplianceSummaryTimestamp" :: NullOrUndefined (Date) }
```

<p>The number of AWS Config rules or AWS resources that are compliant and noncompliant.</p>

##### Instances
``` purescript
Newtype ComplianceSummary _
Generic ComplianceSummary _
Show ComplianceSummary
Decode ComplianceSummary
Encode ComplianceSummary
```

#### `newComplianceSummary`

``` purescript
newComplianceSummary :: ComplianceSummary
```

Constructs ComplianceSummary from required parameters

#### `newComplianceSummary'`

``` purescript
newComplianceSummary' :: ({ "CompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount), "NonCompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount), "ComplianceSummaryTimestamp" :: NullOrUndefined (Date) } -> { "CompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount), "NonCompliantResourceCount" :: NullOrUndefined (ComplianceContributorCount), "ComplianceSummaryTimestamp" :: NullOrUndefined (Date) }) -> ComplianceSummary
```

Constructs ComplianceSummary's fields from required parameters

#### `ComplianceSummaryByResourceType`

``` purescript
newtype ComplianceSummaryByResourceType
  = ComplianceSummaryByResourceType { "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) }
```

<p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each compliance.</p>

##### Instances
``` purescript
Newtype ComplianceSummaryByResourceType _
Generic ComplianceSummaryByResourceType _
Show ComplianceSummaryByResourceType
Decode ComplianceSummaryByResourceType
Encode ComplianceSummaryByResourceType
```

#### `newComplianceSummaryByResourceType`

``` purescript
newComplianceSummaryByResourceType :: ComplianceSummaryByResourceType
```

Constructs ComplianceSummaryByResourceType from required parameters

#### `newComplianceSummaryByResourceType'`

``` purescript
newComplianceSummaryByResourceType' :: ({ "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) } -> { "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) }) -> ComplianceSummaryByResourceType
```

Constructs ComplianceSummaryByResourceType's fields from required parameters

#### `ComplianceType`

``` purescript
newtype ComplianceType
  = ComplianceType String
```

##### Instances
``` purescript
Newtype ComplianceType _
Generic ComplianceType _
Show ComplianceType
Decode ComplianceType
Encode ComplianceType
```

#### `ComplianceTypes`

``` purescript
newtype ComplianceTypes
  = ComplianceTypes (Array ComplianceType)
```

##### Instances
``` purescript
Newtype ComplianceTypes _
Generic ComplianceTypes _
Show ComplianceTypes
Decode ComplianceTypes
Encode ComplianceTypes
```

#### `ConfigExportDeliveryInfo`

``` purescript
newtype ConfigExportDeliveryInfo
  = ConfigExportDeliveryInfo { lastStatus :: NullOrUndefined (DeliveryStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastAttemptTime :: NullOrUndefined (Date), lastSuccessfulTime :: NullOrUndefined (Date), nextDeliveryTime :: NullOrUndefined (Date) }
```

<p>Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.</p>

##### Instances
``` purescript
Newtype ConfigExportDeliveryInfo _
Generic ConfigExportDeliveryInfo _
Show ConfigExportDeliveryInfo
Decode ConfigExportDeliveryInfo
Encode ConfigExportDeliveryInfo
```

#### `newConfigExportDeliveryInfo`

``` purescript
newConfigExportDeliveryInfo :: ConfigExportDeliveryInfo
```

Constructs ConfigExportDeliveryInfo from required parameters

#### `newConfigExportDeliveryInfo'`

``` purescript
newConfigExportDeliveryInfo' :: ({ lastStatus :: NullOrUndefined (DeliveryStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastAttemptTime :: NullOrUndefined (Date), lastSuccessfulTime :: NullOrUndefined (Date), nextDeliveryTime :: NullOrUndefined (Date) } -> { lastStatus :: NullOrUndefined (DeliveryStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastAttemptTime :: NullOrUndefined (Date), lastSuccessfulTime :: NullOrUndefined (Date), nextDeliveryTime :: NullOrUndefined (Date) }) -> ConfigExportDeliveryInfo
```

Constructs ConfigExportDeliveryInfo's fields from required parameters

#### `ConfigRule`

``` purescript
newtype ConfigRule
  = ConfigRule { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ConfigRuleArn" :: NullOrUndefined (String), "ConfigRuleId" :: NullOrUndefined (String), "Description" :: NullOrUndefined (EmptiableStringWithCharLimit256), "Scope" :: NullOrUndefined (Scope), "Source" :: Source, "InputParameters" :: NullOrUndefined (StringWithCharLimit1024), "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency), "ConfigRuleState" :: NullOrUndefined (ConfigRuleState) }
```

<p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype ConfigRule _
Generic ConfigRule _
Show ConfigRule
Decode ConfigRule
Encode ConfigRule
```

#### `newConfigRule`

``` purescript
newConfigRule :: Source -> ConfigRule
```

Constructs ConfigRule from required parameters

#### `newConfigRule'`

``` purescript
newConfigRule' :: Source -> ({ "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ConfigRuleArn" :: NullOrUndefined (String), "ConfigRuleId" :: NullOrUndefined (String), "Description" :: NullOrUndefined (EmptiableStringWithCharLimit256), "Scope" :: NullOrUndefined (Scope), "Source" :: Source, "InputParameters" :: NullOrUndefined (StringWithCharLimit1024), "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency), "ConfigRuleState" :: NullOrUndefined (ConfigRuleState) } -> { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ConfigRuleArn" :: NullOrUndefined (String), "ConfigRuleId" :: NullOrUndefined (String), "Description" :: NullOrUndefined (EmptiableStringWithCharLimit256), "Scope" :: NullOrUndefined (Scope), "Source" :: Source, "InputParameters" :: NullOrUndefined (StringWithCharLimit1024), "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency), "ConfigRuleState" :: NullOrUndefined (ConfigRuleState) }) -> ConfigRule
```

Constructs ConfigRule's fields from required parameters

#### `ConfigRuleEvaluationStatus`

``` purescript
newtype ConfigRuleEvaluationStatus
  = ConfigRuleEvaluationStatus { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ConfigRuleArn" :: NullOrUndefined (String), "ConfigRuleId" :: NullOrUndefined (String), "LastSuccessfulInvocationTime" :: NullOrUndefined (Date), "LastFailedInvocationTime" :: NullOrUndefined (Date), "LastSuccessfulEvaluationTime" :: NullOrUndefined (Date), "LastFailedEvaluationTime" :: NullOrUndefined (Date), "FirstActivatedTime" :: NullOrUndefined (Date), "LastErrorCode" :: NullOrUndefined (String), "LastErrorMessage" :: NullOrUndefined (String), "FirstEvaluationStarted" :: NullOrUndefined (Boolean) }
```

<p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom Config rules.</p>

##### Instances
``` purescript
Newtype ConfigRuleEvaluationStatus _
Generic ConfigRuleEvaluationStatus _
Show ConfigRuleEvaluationStatus
Decode ConfigRuleEvaluationStatus
Encode ConfigRuleEvaluationStatus
```

#### `newConfigRuleEvaluationStatus`

``` purescript
newConfigRuleEvaluationStatus :: ConfigRuleEvaluationStatus
```

Constructs ConfigRuleEvaluationStatus from required parameters

#### `newConfigRuleEvaluationStatus'`

``` purescript
newConfigRuleEvaluationStatus' :: ({ "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ConfigRuleArn" :: NullOrUndefined (String), "ConfigRuleId" :: NullOrUndefined (String), "LastSuccessfulInvocationTime" :: NullOrUndefined (Date), "LastFailedInvocationTime" :: NullOrUndefined (Date), "LastSuccessfulEvaluationTime" :: NullOrUndefined (Date), "LastFailedEvaluationTime" :: NullOrUndefined (Date), "FirstActivatedTime" :: NullOrUndefined (Date), "LastErrorCode" :: NullOrUndefined (String), "LastErrorMessage" :: NullOrUndefined (String), "FirstEvaluationStarted" :: NullOrUndefined (Boolean) } -> { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ConfigRuleArn" :: NullOrUndefined (String), "ConfigRuleId" :: NullOrUndefined (String), "LastSuccessfulInvocationTime" :: NullOrUndefined (Date), "LastFailedInvocationTime" :: NullOrUndefined (Date), "LastSuccessfulEvaluationTime" :: NullOrUndefined (Date), "LastFailedEvaluationTime" :: NullOrUndefined (Date), "FirstActivatedTime" :: NullOrUndefined (Date), "LastErrorCode" :: NullOrUndefined (String), "LastErrorMessage" :: NullOrUndefined (String), "FirstEvaluationStarted" :: NullOrUndefined (Boolean) }) -> ConfigRuleEvaluationStatus
```

Constructs ConfigRuleEvaluationStatus's fields from required parameters

#### `ConfigRuleEvaluationStatusList`

``` purescript
newtype ConfigRuleEvaluationStatusList
  = ConfigRuleEvaluationStatusList (Array ConfigRuleEvaluationStatus)
```

##### Instances
``` purescript
Newtype ConfigRuleEvaluationStatusList _
Generic ConfigRuleEvaluationStatusList _
Show ConfigRuleEvaluationStatusList
Decode ConfigRuleEvaluationStatusList
Encode ConfigRuleEvaluationStatusList
```

#### `ConfigRuleNames`

``` purescript
newtype ConfigRuleNames
  = ConfigRuleNames (Array StringWithCharLimit64)
```

##### Instances
``` purescript
Newtype ConfigRuleNames _
Generic ConfigRuleNames _
Show ConfigRuleNames
Decode ConfigRuleNames
Encode ConfigRuleNames
```

#### `ConfigRuleState`

``` purescript
newtype ConfigRuleState
  = ConfigRuleState String
```

##### Instances
``` purescript
Newtype ConfigRuleState _
Generic ConfigRuleState _
Show ConfigRuleState
Decode ConfigRuleState
Encode ConfigRuleState
```

#### `ConfigRules`

``` purescript
newtype ConfigRules
  = ConfigRules (Array ConfigRule)
```

##### Instances
``` purescript
Newtype ConfigRules _
Generic ConfigRules _
Show ConfigRules
Decode ConfigRules
Encode ConfigRules
```

#### `ConfigSnapshotDeliveryProperties`

``` purescript
newtype ConfigSnapshotDeliveryProperties
  = ConfigSnapshotDeliveryProperties { deliveryFrequency :: NullOrUndefined (MaximumExecutionFrequency) }
```

<p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <note> <p>If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:</p> </note> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>

##### Instances
``` purescript
Newtype ConfigSnapshotDeliveryProperties _
Generic ConfigSnapshotDeliveryProperties _
Show ConfigSnapshotDeliveryProperties
Decode ConfigSnapshotDeliveryProperties
Encode ConfigSnapshotDeliveryProperties
```

#### `newConfigSnapshotDeliveryProperties`

``` purescript
newConfigSnapshotDeliveryProperties :: ConfigSnapshotDeliveryProperties
```

Constructs ConfigSnapshotDeliveryProperties from required parameters

#### `newConfigSnapshotDeliveryProperties'`

``` purescript
newConfigSnapshotDeliveryProperties' :: ({ deliveryFrequency :: NullOrUndefined (MaximumExecutionFrequency) } -> { deliveryFrequency :: NullOrUndefined (MaximumExecutionFrequency) }) -> ConfigSnapshotDeliveryProperties
```

Constructs ConfigSnapshotDeliveryProperties's fields from required parameters

#### `ConfigStreamDeliveryInfo`

``` purescript
newtype ConfigStreamDeliveryInfo
  = ConfigStreamDeliveryInfo { lastStatus :: NullOrUndefined (DeliveryStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastStatusChangeTime :: NullOrUndefined (Date) }
```

<p>A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.</p>

##### Instances
``` purescript
Newtype ConfigStreamDeliveryInfo _
Generic ConfigStreamDeliveryInfo _
Show ConfigStreamDeliveryInfo
Decode ConfigStreamDeliveryInfo
Encode ConfigStreamDeliveryInfo
```

#### `newConfigStreamDeliveryInfo`

``` purescript
newConfigStreamDeliveryInfo :: ConfigStreamDeliveryInfo
```

Constructs ConfigStreamDeliveryInfo from required parameters

#### `newConfigStreamDeliveryInfo'`

``` purescript
newConfigStreamDeliveryInfo' :: ({ lastStatus :: NullOrUndefined (DeliveryStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastStatusChangeTime :: NullOrUndefined (Date) } -> { lastStatus :: NullOrUndefined (DeliveryStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastStatusChangeTime :: NullOrUndefined (Date) }) -> ConfigStreamDeliveryInfo
```

Constructs ConfigStreamDeliveryInfo's fields from required parameters

#### `Configuration`

``` purescript
newtype Configuration
  = Configuration String
```

##### Instances
``` purescript
Newtype Configuration _
Generic Configuration _
Show Configuration
Decode Configuration
Encode Configuration
```

#### `ConfigurationItem`

``` purescript
newtype ConfigurationItem
  = ConfigurationItem { version :: NullOrUndefined (Version), accountId :: NullOrUndefined (AccountId), configurationItemCaptureTime :: NullOrUndefined (ConfigurationItemCaptureTime), configurationItemStatus :: NullOrUndefined (ConfigurationItemStatus), configurationStateId :: NullOrUndefined (ConfigurationStateId), configurationItemMD5Hash :: NullOrUndefined (ConfigurationItemMD5Hash), arn :: NullOrUndefined (ARN), resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), awsRegion :: NullOrUndefined (AwsRegion), availabilityZone :: NullOrUndefined (AvailabilityZone), resourceCreationTime :: NullOrUndefined (ResourceCreationTime), tags :: NullOrUndefined (Tags), relatedEvents :: NullOrUndefined (RelatedEventList), relationships :: NullOrUndefined (RelationshipList), configuration :: NullOrUndefined (Configuration), supplementaryConfiguration :: NullOrUndefined (SupplementaryConfiguration) }
```

<p>A list that contains detailed configurations of a specified resource.</p>

##### Instances
``` purescript
Newtype ConfigurationItem _
Generic ConfigurationItem _
Show ConfigurationItem
Decode ConfigurationItem
Encode ConfigurationItem
```

#### `newConfigurationItem`

``` purescript
newConfigurationItem :: ConfigurationItem
```

Constructs ConfigurationItem from required parameters

#### `newConfigurationItem'`

``` purescript
newConfigurationItem' :: ({ version :: NullOrUndefined (Version), accountId :: NullOrUndefined (AccountId), configurationItemCaptureTime :: NullOrUndefined (ConfigurationItemCaptureTime), configurationItemStatus :: NullOrUndefined (ConfigurationItemStatus), configurationStateId :: NullOrUndefined (ConfigurationStateId), configurationItemMD5Hash :: NullOrUndefined (ConfigurationItemMD5Hash), arn :: NullOrUndefined (ARN), resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), awsRegion :: NullOrUndefined (AwsRegion), availabilityZone :: NullOrUndefined (AvailabilityZone), resourceCreationTime :: NullOrUndefined (ResourceCreationTime), tags :: NullOrUndefined (Tags), relatedEvents :: NullOrUndefined (RelatedEventList), relationships :: NullOrUndefined (RelationshipList), configuration :: NullOrUndefined (Configuration), supplementaryConfiguration :: NullOrUndefined (SupplementaryConfiguration) } -> { version :: NullOrUndefined (Version), accountId :: NullOrUndefined (AccountId), configurationItemCaptureTime :: NullOrUndefined (ConfigurationItemCaptureTime), configurationItemStatus :: NullOrUndefined (ConfigurationItemStatus), configurationStateId :: NullOrUndefined (ConfigurationStateId), configurationItemMD5Hash :: NullOrUndefined (ConfigurationItemMD5Hash), arn :: NullOrUndefined (ARN), resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), awsRegion :: NullOrUndefined (AwsRegion), availabilityZone :: NullOrUndefined (AvailabilityZone), resourceCreationTime :: NullOrUndefined (ResourceCreationTime), tags :: NullOrUndefined (Tags), relatedEvents :: NullOrUndefined (RelatedEventList), relationships :: NullOrUndefined (RelationshipList), configuration :: NullOrUndefined (Configuration), supplementaryConfiguration :: NullOrUndefined (SupplementaryConfiguration) }) -> ConfigurationItem
```

Constructs ConfigurationItem's fields from required parameters

#### `ConfigurationItemCaptureTime`

``` purescript
newtype ConfigurationItemCaptureTime
  = ConfigurationItemCaptureTime Timestamp
```

##### Instances
``` purescript
Newtype ConfigurationItemCaptureTime _
Generic ConfigurationItemCaptureTime _
Show ConfigurationItemCaptureTime
Decode ConfigurationItemCaptureTime
Encode ConfigurationItemCaptureTime
```

#### `ConfigurationItemList`

``` purescript
newtype ConfigurationItemList
  = ConfigurationItemList (Array ConfigurationItem)
```

##### Instances
``` purescript
Newtype ConfigurationItemList _
Generic ConfigurationItemList _
Show ConfigurationItemList
Decode ConfigurationItemList
Encode ConfigurationItemList
```

#### `ConfigurationItemMD5Hash`

``` purescript
newtype ConfigurationItemMD5Hash
  = ConfigurationItemMD5Hash String
```

##### Instances
``` purescript
Newtype ConfigurationItemMD5Hash _
Generic ConfigurationItemMD5Hash _
Show ConfigurationItemMD5Hash
Decode ConfigurationItemMD5Hash
Encode ConfigurationItemMD5Hash
```

#### `ConfigurationItemStatus`

``` purescript
newtype ConfigurationItemStatus
  = ConfigurationItemStatus String
```

##### Instances
``` purescript
Newtype ConfigurationItemStatus _
Generic ConfigurationItemStatus _
Show ConfigurationItemStatus
Decode ConfigurationItemStatus
Encode ConfigurationItemStatus
```

#### `ConfigurationRecorder`

``` purescript
newtype ConfigurationRecorder
  = ConfigurationRecorder { name :: NullOrUndefined (RecorderName), roleARN :: NullOrUndefined (String), recordingGroup :: NullOrUndefined (RecordingGroup) }
```

<p>An object that represents the recording of configuration changes of an AWS resource.</p>

##### Instances
``` purescript
Newtype ConfigurationRecorder _
Generic ConfigurationRecorder _
Show ConfigurationRecorder
Decode ConfigurationRecorder
Encode ConfigurationRecorder
```

#### `newConfigurationRecorder`

``` purescript
newConfigurationRecorder :: ConfigurationRecorder
```

Constructs ConfigurationRecorder from required parameters

#### `newConfigurationRecorder'`

``` purescript
newConfigurationRecorder' :: ({ name :: NullOrUndefined (RecorderName), roleARN :: NullOrUndefined (String), recordingGroup :: NullOrUndefined (RecordingGroup) } -> { name :: NullOrUndefined (RecorderName), roleARN :: NullOrUndefined (String), recordingGroup :: NullOrUndefined (RecordingGroup) }) -> ConfigurationRecorder
```

Constructs ConfigurationRecorder's fields from required parameters

#### `ConfigurationRecorderList`

``` purescript
newtype ConfigurationRecorderList
  = ConfigurationRecorderList (Array ConfigurationRecorder)
```

##### Instances
``` purescript
Newtype ConfigurationRecorderList _
Generic ConfigurationRecorderList _
Show ConfigurationRecorderList
Decode ConfigurationRecorderList
Encode ConfigurationRecorderList
```

#### `ConfigurationRecorderNameList`

``` purescript
newtype ConfigurationRecorderNameList
  = ConfigurationRecorderNameList (Array RecorderName)
```

##### Instances
``` purescript
Newtype ConfigurationRecorderNameList _
Generic ConfigurationRecorderNameList _
Show ConfigurationRecorderNameList
Decode ConfigurationRecorderNameList
Encode ConfigurationRecorderNameList
```

#### `ConfigurationRecorderStatus`

``` purescript
newtype ConfigurationRecorderStatus
  = ConfigurationRecorderStatus { name :: NullOrUndefined (String), lastStartTime :: NullOrUndefined (Date), lastStopTime :: NullOrUndefined (Date), recording :: NullOrUndefined (Boolean), lastStatus :: NullOrUndefined (RecorderStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastStatusChangeTime :: NullOrUndefined (Date) }
```

<p>The current status of the configuration recorder.</p>

##### Instances
``` purescript
Newtype ConfigurationRecorderStatus _
Generic ConfigurationRecorderStatus _
Show ConfigurationRecorderStatus
Decode ConfigurationRecorderStatus
Encode ConfigurationRecorderStatus
```

#### `newConfigurationRecorderStatus`

``` purescript
newConfigurationRecorderStatus :: ConfigurationRecorderStatus
```

Constructs ConfigurationRecorderStatus from required parameters

#### `newConfigurationRecorderStatus'`

``` purescript
newConfigurationRecorderStatus' :: ({ name :: NullOrUndefined (String), lastStartTime :: NullOrUndefined (Date), lastStopTime :: NullOrUndefined (Date), recording :: NullOrUndefined (Boolean), lastStatus :: NullOrUndefined (RecorderStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastStatusChangeTime :: NullOrUndefined (Date) } -> { name :: NullOrUndefined (String), lastStartTime :: NullOrUndefined (Date), lastStopTime :: NullOrUndefined (Date), recording :: NullOrUndefined (Boolean), lastStatus :: NullOrUndefined (RecorderStatus), lastErrorCode :: NullOrUndefined (String), lastErrorMessage :: NullOrUndefined (String), lastStatusChangeTime :: NullOrUndefined (Date) }) -> ConfigurationRecorderStatus
```

Constructs ConfigurationRecorderStatus's fields from required parameters

#### `ConfigurationRecorderStatusList`

``` purescript
newtype ConfigurationRecorderStatusList
  = ConfigurationRecorderStatusList (Array ConfigurationRecorderStatus)
```

##### Instances
``` purescript
Newtype ConfigurationRecorderStatusList _
Generic ConfigurationRecorderStatusList _
Show ConfigurationRecorderStatusList
Decode ConfigurationRecorderStatusList
Encode ConfigurationRecorderStatusList
```

#### `ConfigurationStateId`

``` purescript
newtype ConfigurationStateId
  = ConfigurationStateId String
```

##### Instances
``` purescript
Newtype ConfigurationStateId _
Generic ConfigurationStateId _
Show ConfigurationStateId
Decode ConfigurationStateId
Encode ConfigurationStateId
```

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DeleteConfigRuleRequest`

``` purescript
newtype DeleteConfigRuleRequest
  = DeleteConfigRuleRequest { "ConfigRuleName" :: StringWithCharLimit64 }
```

<p/>

##### Instances
``` purescript
Newtype DeleteConfigRuleRequest _
Generic DeleteConfigRuleRequest _
Show DeleteConfigRuleRequest
Decode DeleteConfigRuleRequest
Encode DeleteConfigRuleRequest
```

#### `newDeleteConfigRuleRequest`

``` purescript
newDeleteConfigRuleRequest :: StringWithCharLimit64 -> DeleteConfigRuleRequest
```

Constructs DeleteConfigRuleRequest from required parameters

#### `newDeleteConfigRuleRequest'`

``` purescript
newDeleteConfigRuleRequest' :: StringWithCharLimit64 -> ({ "ConfigRuleName" :: StringWithCharLimit64 } -> { "ConfigRuleName" :: StringWithCharLimit64 }) -> DeleteConfigRuleRequest
```

Constructs DeleteConfigRuleRequest's fields from required parameters

#### `DeleteConfigurationRecorderRequest`

``` purescript
newtype DeleteConfigurationRecorderRequest
  = DeleteConfigurationRecorderRequest { "ConfigurationRecorderName" :: RecorderName }
```

<p>The request object for the <code>DeleteConfigurationRecorder</code> action.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationRecorderRequest _
Generic DeleteConfigurationRecorderRequest _
Show DeleteConfigurationRecorderRequest
Decode DeleteConfigurationRecorderRequest
Encode DeleteConfigurationRecorderRequest
```

#### `newDeleteConfigurationRecorderRequest`

``` purescript
newDeleteConfigurationRecorderRequest :: RecorderName -> DeleteConfigurationRecorderRequest
```

Constructs DeleteConfigurationRecorderRequest from required parameters

#### `newDeleteConfigurationRecorderRequest'`

``` purescript
newDeleteConfigurationRecorderRequest' :: RecorderName -> ({ "ConfigurationRecorderName" :: RecorderName } -> { "ConfigurationRecorderName" :: RecorderName }) -> DeleteConfigurationRecorderRequest
```

Constructs DeleteConfigurationRecorderRequest's fields from required parameters

#### `DeleteDeliveryChannelRequest`

``` purescript
newtype DeleteDeliveryChannelRequest
  = DeleteDeliveryChannelRequest { "DeliveryChannelName" :: ChannelName }
```

<p>The input for the <a>DeleteDeliveryChannel</a> action. The action accepts the following data in JSON format. </p>

##### Instances
``` purescript
Newtype DeleteDeliveryChannelRequest _
Generic DeleteDeliveryChannelRequest _
Show DeleteDeliveryChannelRequest
Decode DeleteDeliveryChannelRequest
Encode DeleteDeliveryChannelRequest
```

#### `newDeleteDeliveryChannelRequest`

``` purescript
newDeleteDeliveryChannelRequest :: ChannelName -> DeleteDeliveryChannelRequest
```

Constructs DeleteDeliveryChannelRequest from required parameters

#### `newDeleteDeliveryChannelRequest'`

``` purescript
newDeleteDeliveryChannelRequest' :: ChannelName -> ({ "DeliveryChannelName" :: ChannelName } -> { "DeliveryChannelName" :: ChannelName }) -> DeleteDeliveryChannelRequest
```

Constructs DeleteDeliveryChannelRequest's fields from required parameters

#### `DeleteEvaluationResultsRequest`

``` purescript
newtype DeleteEvaluationResultsRequest
  = DeleteEvaluationResultsRequest { "ConfigRuleName" :: StringWithCharLimit64 }
```

<p/>

##### Instances
``` purescript
Newtype DeleteEvaluationResultsRequest _
Generic DeleteEvaluationResultsRequest _
Show DeleteEvaluationResultsRequest
Decode DeleteEvaluationResultsRequest
Encode DeleteEvaluationResultsRequest
```

#### `newDeleteEvaluationResultsRequest`

``` purescript
newDeleteEvaluationResultsRequest :: StringWithCharLimit64 -> DeleteEvaluationResultsRequest
```

Constructs DeleteEvaluationResultsRequest from required parameters

#### `newDeleteEvaluationResultsRequest'`

``` purescript
newDeleteEvaluationResultsRequest' :: StringWithCharLimit64 -> ({ "ConfigRuleName" :: StringWithCharLimit64 } -> { "ConfigRuleName" :: StringWithCharLimit64 }) -> DeleteEvaluationResultsRequest
```

Constructs DeleteEvaluationResultsRequest's fields from required parameters

#### `DeleteEvaluationResultsResponse`

``` purescript
newtype DeleteEvaluationResultsResponse
  = DeleteEvaluationResultsResponse NoArguments
```

<p>The output when you delete the evaluation results for the specified Config rule.</p>

##### Instances
``` purescript
Newtype DeleteEvaluationResultsResponse _
Generic DeleteEvaluationResultsResponse _
Show DeleteEvaluationResultsResponse
Decode DeleteEvaluationResultsResponse
Encode DeleteEvaluationResultsResponse
```

#### `DeliverConfigSnapshotRequest`

``` purescript
newtype DeliverConfigSnapshotRequest
  = DeliverConfigSnapshotRequest { deliveryChannelName :: ChannelName }
```

<p>The input for the <a>DeliverConfigSnapshot</a> action.</p>

##### Instances
``` purescript
Newtype DeliverConfigSnapshotRequest _
Generic DeliverConfigSnapshotRequest _
Show DeliverConfigSnapshotRequest
Decode DeliverConfigSnapshotRequest
Encode DeliverConfigSnapshotRequest
```

#### `newDeliverConfigSnapshotRequest`

``` purescript
newDeliverConfigSnapshotRequest :: ChannelName -> DeliverConfigSnapshotRequest
```

Constructs DeliverConfigSnapshotRequest from required parameters

#### `newDeliverConfigSnapshotRequest'`

``` purescript
newDeliverConfigSnapshotRequest' :: ChannelName -> ({ deliveryChannelName :: ChannelName } -> { deliveryChannelName :: ChannelName }) -> DeliverConfigSnapshotRequest
```

Constructs DeliverConfigSnapshotRequest's fields from required parameters

#### `DeliverConfigSnapshotResponse`

``` purescript
newtype DeliverConfigSnapshotResponse
  = DeliverConfigSnapshotResponse { configSnapshotId :: NullOrUndefined (String) }
```

<p>The output for the <a>DeliverConfigSnapshot</a> action in JSON format.</p>

##### Instances
``` purescript
Newtype DeliverConfigSnapshotResponse _
Generic DeliverConfigSnapshotResponse _
Show DeliverConfigSnapshotResponse
Decode DeliverConfigSnapshotResponse
Encode DeliverConfigSnapshotResponse
```

#### `newDeliverConfigSnapshotResponse`

``` purescript
newDeliverConfigSnapshotResponse :: DeliverConfigSnapshotResponse
```

Constructs DeliverConfigSnapshotResponse from required parameters

#### `newDeliverConfigSnapshotResponse'`

``` purescript
newDeliverConfigSnapshotResponse' :: ({ configSnapshotId :: NullOrUndefined (String) } -> { configSnapshotId :: NullOrUndefined (String) }) -> DeliverConfigSnapshotResponse
```

Constructs DeliverConfigSnapshotResponse's fields from required parameters

#### `DeliveryChannel`

``` purescript
newtype DeliveryChannel
  = DeliveryChannel { name :: NullOrUndefined (ChannelName), s3BucketName :: NullOrUndefined (String), s3KeyPrefix :: NullOrUndefined (String), snsTopicARN :: NullOrUndefined (String), configSnapshotDeliveryProperties :: NullOrUndefined (ConfigSnapshotDeliveryProperties) }
```

<p>The channel through which AWS Config delivers notifications and updated configuration states.</p>

##### Instances
``` purescript
Newtype DeliveryChannel _
Generic DeliveryChannel _
Show DeliveryChannel
Decode DeliveryChannel
Encode DeliveryChannel
```

#### `newDeliveryChannel`

``` purescript
newDeliveryChannel :: DeliveryChannel
```

Constructs DeliveryChannel from required parameters

#### `newDeliveryChannel'`

``` purescript
newDeliveryChannel' :: ({ name :: NullOrUndefined (ChannelName), s3BucketName :: NullOrUndefined (String), s3KeyPrefix :: NullOrUndefined (String), snsTopicARN :: NullOrUndefined (String), configSnapshotDeliveryProperties :: NullOrUndefined (ConfigSnapshotDeliveryProperties) } -> { name :: NullOrUndefined (ChannelName), s3BucketName :: NullOrUndefined (String), s3KeyPrefix :: NullOrUndefined (String), snsTopicARN :: NullOrUndefined (String), configSnapshotDeliveryProperties :: NullOrUndefined (ConfigSnapshotDeliveryProperties) }) -> DeliveryChannel
```

Constructs DeliveryChannel's fields from required parameters

#### `DeliveryChannelList`

``` purescript
newtype DeliveryChannelList
  = DeliveryChannelList (Array DeliveryChannel)
```

##### Instances
``` purescript
Newtype DeliveryChannelList _
Generic DeliveryChannelList _
Show DeliveryChannelList
Decode DeliveryChannelList
Encode DeliveryChannelList
```

#### `DeliveryChannelNameList`

``` purescript
newtype DeliveryChannelNameList
  = DeliveryChannelNameList (Array ChannelName)
```

##### Instances
``` purescript
Newtype DeliveryChannelNameList _
Generic DeliveryChannelNameList _
Show DeliveryChannelNameList
Decode DeliveryChannelNameList
Encode DeliveryChannelNameList
```

#### `DeliveryChannelStatus`

``` purescript
newtype DeliveryChannelStatus
  = DeliveryChannelStatus { name :: NullOrUndefined (String), configSnapshotDeliveryInfo :: NullOrUndefined (ConfigExportDeliveryInfo), configHistoryDeliveryInfo :: NullOrUndefined (ConfigExportDeliveryInfo), configStreamDeliveryInfo :: NullOrUndefined (ConfigStreamDeliveryInfo) }
```

<p>The status of a specified delivery channel.</p> <p>Valid values: <code>Success</code> | <code>Failure</code> </p>

##### Instances
``` purescript
Newtype DeliveryChannelStatus _
Generic DeliveryChannelStatus _
Show DeliveryChannelStatus
Decode DeliveryChannelStatus
Encode DeliveryChannelStatus
```

#### `newDeliveryChannelStatus`

``` purescript
newDeliveryChannelStatus :: DeliveryChannelStatus
```

Constructs DeliveryChannelStatus from required parameters

#### `newDeliveryChannelStatus'`

``` purescript
newDeliveryChannelStatus' :: ({ name :: NullOrUndefined (String), configSnapshotDeliveryInfo :: NullOrUndefined (ConfigExportDeliveryInfo), configHistoryDeliveryInfo :: NullOrUndefined (ConfigExportDeliveryInfo), configStreamDeliveryInfo :: NullOrUndefined (ConfigStreamDeliveryInfo) } -> { name :: NullOrUndefined (String), configSnapshotDeliveryInfo :: NullOrUndefined (ConfigExportDeliveryInfo), configHistoryDeliveryInfo :: NullOrUndefined (ConfigExportDeliveryInfo), configStreamDeliveryInfo :: NullOrUndefined (ConfigStreamDeliveryInfo) }) -> DeliveryChannelStatus
```

Constructs DeliveryChannelStatus's fields from required parameters

#### `DeliveryChannelStatusList`

``` purescript
newtype DeliveryChannelStatusList
  = DeliveryChannelStatusList (Array DeliveryChannelStatus)
```

##### Instances
``` purescript
Newtype DeliveryChannelStatusList _
Generic DeliveryChannelStatusList _
Show DeliveryChannelStatusList
Decode DeliveryChannelStatusList
Encode DeliveryChannelStatusList
```

#### `DeliveryStatus`

``` purescript
newtype DeliveryStatus
  = DeliveryStatus String
```

##### Instances
``` purescript
Newtype DeliveryStatus _
Generic DeliveryStatus _
Show DeliveryStatus
Decode DeliveryStatus
Encode DeliveryStatus
```

#### `DescribeComplianceByConfigRuleRequest`

``` purescript
newtype DescribeComplianceByConfigRuleRequest
  = DescribeComplianceByConfigRuleRequest { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeComplianceByConfigRuleRequest _
Generic DescribeComplianceByConfigRuleRequest _
Show DescribeComplianceByConfigRuleRequest
Decode DescribeComplianceByConfigRuleRequest
Encode DescribeComplianceByConfigRuleRequest
```

#### `newDescribeComplianceByConfigRuleRequest`

``` purescript
newDescribeComplianceByConfigRuleRequest :: DescribeComplianceByConfigRuleRequest
```

Constructs DescribeComplianceByConfigRuleRequest from required parameters

#### `newDescribeComplianceByConfigRuleRequest'`

``` purescript
newDescribeComplianceByConfigRuleRequest' :: ({ "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "NextToken" :: NullOrUndefined (String) } -> { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "NextToken" :: NullOrUndefined (String) }) -> DescribeComplianceByConfigRuleRequest
```

Constructs DescribeComplianceByConfigRuleRequest's fields from required parameters

#### `DescribeComplianceByConfigRuleResponse`

``` purescript
newtype DescribeComplianceByConfigRuleResponse
  = DescribeComplianceByConfigRuleResponse { "ComplianceByConfigRules" :: NullOrUndefined (ComplianceByConfigRules), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeComplianceByConfigRuleResponse _
Generic DescribeComplianceByConfigRuleResponse _
Show DescribeComplianceByConfigRuleResponse
Decode DescribeComplianceByConfigRuleResponse
Encode DescribeComplianceByConfigRuleResponse
```

#### `newDescribeComplianceByConfigRuleResponse`

``` purescript
newDescribeComplianceByConfigRuleResponse :: DescribeComplianceByConfigRuleResponse
```

Constructs DescribeComplianceByConfigRuleResponse from required parameters

#### `newDescribeComplianceByConfigRuleResponse'`

``` purescript
newDescribeComplianceByConfigRuleResponse' :: ({ "ComplianceByConfigRules" :: NullOrUndefined (ComplianceByConfigRules), "NextToken" :: NullOrUndefined (String) } -> { "ComplianceByConfigRules" :: NullOrUndefined (ComplianceByConfigRules), "NextToken" :: NullOrUndefined (String) }) -> DescribeComplianceByConfigRuleResponse
```

Constructs DescribeComplianceByConfigRuleResponse's fields from required parameters

#### `DescribeComplianceByResourceRequest`

``` purescript
newtype DescribeComplianceByResourceRequest
  = DescribeComplianceByResourceRequest { "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId), "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "Limit" :: NullOrUndefined (Limit), "NextToken" :: NullOrUndefined (NextToken) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeComplianceByResourceRequest _
Generic DescribeComplianceByResourceRequest _
Show DescribeComplianceByResourceRequest
Decode DescribeComplianceByResourceRequest
Encode DescribeComplianceByResourceRequest
```

#### `newDescribeComplianceByResourceRequest`

``` purescript
newDescribeComplianceByResourceRequest :: DescribeComplianceByResourceRequest
```

Constructs DescribeComplianceByResourceRequest from required parameters

#### `newDescribeComplianceByResourceRequest'`

``` purescript
newDescribeComplianceByResourceRequest' :: ({ "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId), "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "Limit" :: NullOrUndefined (Limit), "NextToken" :: NullOrUndefined (NextToken) } -> { "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId), "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "Limit" :: NullOrUndefined (Limit), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeComplianceByResourceRequest
```

Constructs DescribeComplianceByResourceRequest's fields from required parameters

#### `DescribeComplianceByResourceResponse`

``` purescript
newtype DescribeComplianceByResourceResponse
  = DescribeComplianceByResourceResponse { "ComplianceByResources" :: NullOrUndefined (ComplianceByResources), "NextToken" :: NullOrUndefined (NextToken) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeComplianceByResourceResponse _
Generic DescribeComplianceByResourceResponse _
Show DescribeComplianceByResourceResponse
Decode DescribeComplianceByResourceResponse
Encode DescribeComplianceByResourceResponse
```

#### `newDescribeComplianceByResourceResponse`

``` purescript
newDescribeComplianceByResourceResponse :: DescribeComplianceByResourceResponse
```

Constructs DescribeComplianceByResourceResponse from required parameters

#### `newDescribeComplianceByResourceResponse'`

``` purescript
newDescribeComplianceByResourceResponse' :: ({ "ComplianceByResources" :: NullOrUndefined (ComplianceByResources), "NextToken" :: NullOrUndefined (NextToken) } -> { "ComplianceByResources" :: NullOrUndefined (ComplianceByResources), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeComplianceByResourceResponse
```

Constructs DescribeComplianceByResourceResponse's fields from required parameters

#### `DescribeConfigRuleEvaluationStatusRequest`

``` purescript
newtype DescribeConfigRuleEvaluationStatusRequest
  = DescribeConfigRuleEvaluationStatusRequest { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "NextToken" :: NullOrUndefined (String), "Limit" :: NullOrUndefined (RuleLimit) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeConfigRuleEvaluationStatusRequest _
Generic DescribeConfigRuleEvaluationStatusRequest _
Show DescribeConfigRuleEvaluationStatusRequest
Decode DescribeConfigRuleEvaluationStatusRequest
Encode DescribeConfigRuleEvaluationStatusRequest
```

#### `newDescribeConfigRuleEvaluationStatusRequest`

``` purescript
newDescribeConfigRuleEvaluationStatusRequest :: DescribeConfigRuleEvaluationStatusRequest
```

Constructs DescribeConfigRuleEvaluationStatusRequest from required parameters

#### `newDescribeConfigRuleEvaluationStatusRequest'`

``` purescript
newDescribeConfigRuleEvaluationStatusRequest' :: ({ "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "NextToken" :: NullOrUndefined (String), "Limit" :: NullOrUndefined (RuleLimit) } -> { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "NextToken" :: NullOrUndefined (String), "Limit" :: NullOrUndefined (RuleLimit) }) -> DescribeConfigRuleEvaluationStatusRequest
```

Constructs DescribeConfigRuleEvaluationStatusRequest's fields from required parameters

#### `DescribeConfigRuleEvaluationStatusResponse`

``` purescript
newtype DescribeConfigRuleEvaluationStatusResponse
  = DescribeConfigRuleEvaluationStatusResponse { "ConfigRulesEvaluationStatus" :: NullOrUndefined (ConfigRuleEvaluationStatusList), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeConfigRuleEvaluationStatusResponse _
Generic DescribeConfigRuleEvaluationStatusResponse _
Show DescribeConfigRuleEvaluationStatusResponse
Decode DescribeConfigRuleEvaluationStatusResponse
Encode DescribeConfigRuleEvaluationStatusResponse
```

#### `newDescribeConfigRuleEvaluationStatusResponse`

``` purescript
newDescribeConfigRuleEvaluationStatusResponse :: DescribeConfigRuleEvaluationStatusResponse
```

Constructs DescribeConfigRuleEvaluationStatusResponse from required parameters

#### `newDescribeConfigRuleEvaluationStatusResponse'`

``` purescript
newDescribeConfigRuleEvaluationStatusResponse' :: ({ "ConfigRulesEvaluationStatus" :: NullOrUndefined (ConfigRuleEvaluationStatusList), "NextToken" :: NullOrUndefined (String) } -> { "ConfigRulesEvaluationStatus" :: NullOrUndefined (ConfigRuleEvaluationStatusList), "NextToken" :: NullOrUndefined (String) }) -> DescribeConfigRuleEvaluationStatusResponse
```

Constructs DescribeConfigRuleEvaluationStatusResponse's fields from required parameters

#### `DescribeConfigRulesRequest`

``` purescript
newtype DescribeConfigRulesRequest
  = DescribeConfigRulesRequest { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeConfigRulesRequest _
Generic DescribeConfigRulesRequest _
Show DescribeConfigRulesRequest
Decode DescribeConfigRulesRequest
Encode DescribeConfigRulesRequest
```

#### `newDescribeConfigRulesRequest`

``` purescript
newDescribeConfigRulesRequest :: DescribeConfigRulesRequest
```

Constructs DescribeConfigRulesRequest from required parameters

#### `newDescribeConfigRulesRequest'`

``` purescript
newDescribeConfigRulesRequest' :: ({ "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "NextToken" :: NullOrUndefined (String) } -> { "ConfigRuleNames" :: NullOrUndefined (ConfigRuleNames), "NextToken" :: NullOrUndefined (String) }) -> DescribeConfigRulesRequest
```

Constructs DescribeConfigRulesRequest's fields from required parameters

#### `DescribeConfigRulesResponse`

``` purescript
newtype DescribeConfigRulesResponse
  = DescribeConfigRulesResponse { "ConfigRules" :: NullOrUndefined (ConfigRules), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype DescribeConfigRulesResponse _
Generic DescribeConfigRulesResponse _
Show DescribeConfigRulesResponse
Decode DescribeConfigRulesResponse
Encode DescribeConfigRulesResponse
```

#### `newDescribeConfigRulesResponse`

``` purescript
newDescribeConfigRulesResponse :: DescribeConfigRulesResponse
```

Constructs DescribeConfigRulesResponse from required parameters

#### `newDescribeConfigRulesResponse'`

``` purescript
newDescribeConfigRulesResponse' :: ({ "ConfigRules" :: NullOrUndefined (ConfigRules), "NextToken" :: NullOrUndefined (String) } -> { "ConfigRules" :: NullOrUndefined (ConfigRules), "NextToken" :: NullOrUndefined (String) }) -> DescribeConfigRulesResponse
```

Constructs DescribeConfigRulesResponse's fields from required parameters

#### `DescribeConfigurationRecorderStatusRequest`

``` purescript
newtype DescribeConfigurationRecorderStatusRequest
  = DescribeConfigurationRecorderStatusRequest { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) }
```

<p>The input for the <a>DescribeConfigurationRecorderStatus</a> action.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationRecorderStatusRequest _
Generic DescribeConfigurationRecorderStatusRequest _
Show DescribeConfigurationRecorderStatusRequest
Decode DescribeConfigurationRecorderStatusRequest
Encode DescribeConfigurationRecorderStatusRequest
```

#### `newDescribeConfigurationRecorderStatusRequest`

``` purescript
newDescribeConfigurationRecorderStatusRequest :: DescribeConfigurationRecorderStatusRequest
```

Constructs DescribeConfigurationRecorderStatusRequest from required parameters

#### `newDescribeConfigurationRecorderStatusRequest'`

``` purescript
newDescribeConfigurationRecorderStatusRequest' :: ({ "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) } -> { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) }) -> DescribeConfigurationRecorderStatusRequest
```

Constructs DescribeConfigurationRecorderStatusRequest's fields from required parameters

#### `DescribeConfigurationRecorderStatusResponse`

``` purescript
newtype DescribeConfigurationRecorderStatusResponse
  = DescribeConfigurationRecorderStatusResponse { "ConfigurationRecordersStatus" :: NullOrUndefined (ConfigurationRecorderStatusList) }
```

<p>The output for the <a>DescribeConfigurationRecorderStatus</a> action in JSON format.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationRecorderStatusResponse _
Generic DescribeConfigurationRecorderStatusResponse _
Show DescribeConfigurationRecorderStatusResponse
Decode DescribeConfigurationRecorderStatusResponse
Encode DescribeConfigurationRecorderStatusResponse
```

#### `newDescribeConfigurationRecorderStatusResponse`

``` purescript
newDescribeConfigurationRecorderStatusResponse :: DescribeConfigurationRecorderStatusResponse
```

Constructs DescribeConfigurationRecorderStatusResponse from required parameters

#### `newDescribeConfigurationRecorderStatusResponse'`

``` purescript
newDescribeConfigurationRecorderStatusResponse' :: ({ "ConfigurationRecordersStatus" :: NullOrUndefined (ConfigurationRecorderStatusList) } -> { "ConfigurationRecordersStatus" :: NullOrUndefined (ConfigurationRecorderStatusList) }) -> DescribeConfigurationRecorderStatusResponse
```

Constructs DescribeConfigurationRecorderStatusResponse's fields from required parameters

#### `DescribeConfigurationRecordersRequest`

``` purescript
newtype DescribeConfigurationRecordersRequest
  = DescribeConfigurationRecordersRequest { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) }
```

<p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationRecordersRequest _
Generic DescribeConfigurationRecordersRequest _
Show DescribeConfigurationRecordersRequest
Decode DescribeConfigurationRecordersRequest
Encode DescribeConfigurationRecordersRequest
```

#### `newDescribeConfigurationRecordersRequest`

``` purescript
newDescribeConfigurationRecordersRequest :: DescribeConfigurationRecordersRequest
```

Constructs DescribeConfigurationRecordersRequest from required parameters

#### `newDescribeConfigurationRecordersRequest'`

``` purescript
newDescribeConfigurationRecordersRequest' :: ({ "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) } -> { "ConfigurationRecorderNames" :: NullOrUndefined (ConfigurationRecorderNameList) }) -> DescribeConfigurationRecordersRequest
```

Constructs DescribeConfigurationRecordersRequest's fields from required parameters

#### `DescribeConfigurationRecordersResponse`

``` purescript
newtype DescribeConfigurationRecordersResponse
  = DescribeConfigurationRecordersResponse { "ConfigurationRecorders" :: NullOrUndefined (ConfigurationRecorderList) }
```

<p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationRecordersResponse _
Generic DescribeConfigurationRecordersResponse _
Show DescribeConfigurationRecordersResponse
Decode DescribeConfigurationRecordersResponse
Encode DescribeConfigurationRecordersResponse
```

#### `newDescribeConfigurationRecordersResponse`

``` purescript
newDescribeConfigurationRecordersResponse :: DescribeConfigurationRecordersResponse
```

Constructs DescribeConfigurationRecordersResponse from required parameters

#### `newDescribeConfigurationRecordersResponse'`

``` purescript
newDescribeConfigurationRecordersResponse' :: ({ "ConfigurationRecorders" :: NullOrUndefined (ConfigurationRecorderList) } -> { "ConfigurationRecorders" :: NullOrUndefined (ConfigurationRecorderList) }) -> DescribeConfigurationRecordersResponse
```

Constructs DescribeConfigurationRecordersResponse's fields from required parameters

#### `DescribeDeliveryChannelStatusRequest`

``` purescript
newtype DescribeDeliveryChannelStatusRequest
  = DescribeDeliveryChannelStatusRequest { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) }
```

<p>The input for the <a>DeliveryChannelStatus</a> action.</p>

##### Instances
``` purescript
Newtype DescribeDeliveryChannelStatusRequest _
Generic DescribeDeliveryChannelStatusRequest _
Show DescribeDeliveryChannelStatusRequest
Decode DescribeDeliveryChannelStatusRequest
Encode DescribeDeliveryChannelStatusRequest
```

#### `newDescribeDeliveryChannelStatusRequest`

``` purescript
newDescribeDeliveryChannelStatusRequest :: DescribeDeliveryChannelStatusRequest
```

Constructs DescribeDeliveryChannelStatusRequest from required parameters

#### `newDescribeDeliveryChannelStatusRequest'`

``` purescript
newDescribeDeliveryChannelStatusRequest' :: ({ "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) } -> { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) }) -> DescribeDeliveryChannelStatusRequest
```

Constructs DescribeDeliveryChannelStatusRequest's fields from required parameters

#### `DescribeDeliveryChannelStatusResponse`

``` purescript
newtype DescribeDeliveryChannelStatusResponse
  = DescribeDeliveryChannelStatusResponse { "DeliveryChannelsStatus" :: NullOrUndefined (DeliveryChannelStatusList) }
```

<p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>

##### Instances
``` purescript
Newtype DescribeDeliveryChannelStatusResponse _
Generic DescribeDeliveryChannelStatusResponse _
Show DescribeDeliveryChannelStatusResponse
Decode DescribeDeliveryChannelStatusResponse
Encode DescribeDeliveryChannelStatusResponse
```

#### `newDescribeDeliveryChannelStatusResponse`

``` purescript
newDescribeDeliveryChannelStatusResponse :: DescribeDeliveryChannelStatusResponse
```

Constructs DescribeDeliveryChannelStatusResponse from required parameters

#### `newDescribeDeliveryChannelStatusResponse'`

``` purescript
newDescribeDeliveryChannelStatusResponse' :: ({ "DeliveryChannelsStatus" :: NullOrUndefined (DeliveryChannelStatusList) } -> { "DeliveryChannelsStatus" :: NullOrUndefined (DeliveryChannelStatusList) }) -> DescribeDeliveryChannelStatusResponse
```

Constructs DescribeDeliveryChannelStatusResponse's fields from required parameters

#### `DescribeDeliveryChannelsRequest`

``` purescript
newtype DescribeDeliveryChannelsRequest
  = DescribeDeliveryChannelsRequest { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) }
```

<p>The input for the <a>DescribeDeliveryChannels</a> action.</p>

##### Instances
``` purescript
Newtype DescribeDeliveryChannelsRequest _
Generic DescribeDeliveryChannelsRequest _
Show DescribeDeliveryChannelsRequest
Decode DescribeDeliveryChannelsRequest
Encode DescribeDeliveryChannelsRequest
```

#### `newDescribeDeliveryChannelsRequest`

``` purescript
newDescribeDeliveryChannelsRequest :: DescribeDeliveryChannelsRequest
```

Constructs DescribeDeliveryChannelsRequest from required parameters

#### `newDescribeDeliveryChannelsRequest'`

``` purescript
newDescribeDeliveryChannelsRequest' :: ({ "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) } -> { "DeliveryChannelNames" :: NullOrUndefined (DeliveryChannelNameList) }) -> DescribeDeliveryChannelsRequest
```

Constructs DescribeDeliveryChannelsRequest's fields from required parameters

#### `DescribeDeliveryChannelsResponse`

``` purescript
newtype DescribeDeliveryChannelsResponse
  = DescribeDeliveryChannelsResponse { "DeliveryChannels" :: NullOrUndefined (DeliveryChannelList) }
```

<p>The output for the <a>DescribeDeliveryChannels</a> action.</p>

##### Instances
``` purescript
Newtype DescribeDeliveryChannelsResponse _
Generic DescribeDeliveryChannelsResponse _
Show DescribeDeliveryChannelsResponse
Decode DescribeDeliveryChannelsResponse
Encode DescribeDeliveryChannelsResponse
```

#### `newDescribeDeliveryChannelsResponse`

``` purescript
newDescribeDeliveryChannelsResponse :: DescribeDeliveryChannelsResponse
```

Constructs DescribeDeliveryChannelsResponse from required parameters

#### `newDescribeDeliveryChannelsResponse'`

``` purescript
newDescribeDeliveryChannelsResponse' :: ({ "DeliveryChannels" :: NullOrUndefined (DeliveryChannelList) } -> { "DeliveryChannels" :: NullOrUndefined (DeliveryChannelList) }) -> DescribeDeliveryChannelsResponse
```

Constructs DescribeDeliveryChannelsResponse's fields from required parameters

#### `EarlierTime`

``` purescript
newtype EarlierTime
  = EarlierTime Timestamp
```

##### Instances
``` purescript
Newtype EarlierTime _
Generic EarlierTime _
Show EarlierTime
Decode EarlierTime
Encode EarlierTime
```

#### `EmptiableStringWithCharLimit256`

``` purescript
newtype EmptiableStringWithCharLimit256
  = EmptiableStringWithCharLimit256 String
```

##### Instances
``` purescript
Newtype EmptiableStringWithCharLimit256 _
Generic EmptiableStringWithCharLimit256 _
Show EmptiableStringWithCharLimit256
Decode EmptiableStringWithCharLimit256
Encode EmptiableStringWithCharLimit256
```

#### `Evaluation`

``` purescript
newtype Evaluation
  = Evaluation { "ComplianceResourceType" :: StringWithCharLimit256, "ComplianceResourceId" :: BaseResourceId, "ComplianceType" :: ComplianceType, "Annotation" :: NullOrUndefined (StringWithCharLimit256), "OrderingTimestamp" :: OrderingTimestamp }
```

<p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>

##### Instances
``` purescript
Newtype Evaluation _
Generic Evaluation _
Show Evaluation
Decode Evaluation
Encode Evaluation
```

#### `newEvaluation`

``` purescript
newEvaluation :: BaseResourceId -> StringWithCharLimit256 -> ComplianceType -> OrderingTimestamp -> Evaluation
```

Constructs Evaluation from required parameters

#### `newEvaluation'`

``` purescript
newEvaluation' :: BaseResourceId -> StringWithCharLimit256 -> ComplianceType -> OrderingTimestamp -> ({ "ComplianceResourceType" :: StringWithCharLimit256, "ComplianceResourceId" :: BaseResourceId, "ComplianceType" :: ComplianceType, "Annotation" :: NullOrUndefined (StringWithCharLimit256), "OrderingTimestamp" :: OrderingTimestamp } -> { "ComplianceResourceType" :: StringWithCharLimit256, "ComplianceResourceId" :: BaseResourceId, "ComplianceType" :: ComplianceType, "Annotation" :: NullOrUndefined (StringWithCharLimit256), "OrderingTimestamp" :: OrderingTimestamp }) -> Evaluation
```

Constructs Evaluation's fields from required parameters

#### `EvaluationResult`

``` purescript
newtype EvaluationResult
  = EvaluationResult { "EvaluationResultIdentifier" :: NullOrUndefined (EvaluationResultIdentifier), "ComplianceType" :: NullOrUndefined (ComplianceType), "ResultRecordedTime" :: NullOrUndefined (Date), "ConfigRuleInvokedTime" :: NullOrUndefined (Date), "Annotation" :: NullOrUndefined (StringWithCharLimit256), "ResultToken" :: NullOrUndefined (String) }
```

<p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related timestamps, and supplementary information.</p>

##### Instances
``` purescript
Newtype EvaluationResult _
Generic EvaluationResult _
Show EvaluationResult
Decode EvaluationResult
Encode EvaluationResult
```

#### `newEvaluationResult`

``` purescript
newEvaluationResult :: EvaluationResult
```

Constructs EvaluationResult from required parameters

#### `newEvaluationResult'`

``` purescript
newEvaluationResult' :: ({ "EvaluationResultIdentifier" :: NullOrUndefined (EvaluationResultIdentifier), "ComplianceType" :: NullOrUndefined (ComplianceType), "ResultRecordedTime" :: NullOrUndefined (Date), "ConfigRuleInvokedTime" :: NullOrUndefined (Date), "Annotation" :: NullOrUndefined (StringWithCharLimit256), "ResultToken" :: NullOrUndefined (String) } -> { "EvaluationResultIdentifier" :: NullOrUndefined (EvaluationResultIdentifier), "ComplianceType" :: NullOrUndefined (ComplianceType), "ResultRecordedTime" :: NullOrUndefined (Date), "ConfigRuleInvokedTime" :: NullOrUndefined (Date), "Annotation" :: NullOrUndefined (StringWithCharLimit256), "ResultToken" :: NullOrUndefined (String) }) -> EvaluationResult
```

Constructs EvaluationResult's fields from required parameters

#### `EvaluationResultIdentifier`

``` purescript
newtype EvaluationResultIdentifier
  = EvaluationResultIdentifier { "EvaluationResultQualifier" :: NullOrUndefined (EvaluationResultQualifier), "OrderingTimestamp" :: NullOrUndefined (Date) }
```

<p>Uniquely identifies an evaluation result.</p>

##### Instances
``` purescript
Newtype EvaluationResultIdentifier _
Generic EvaluationResultIdentifier _
Show EvaluationResultIdentifier
Decode EvaluationResultIdentifier
Encode EvaluationResultIdentifier
```

#### `newEvaluationResultIdentifier`

``` purescript
newEvaluationResultIdentifier :: EvaluationResultIdentifier
```

Constructs EvaluationResultIdentifier from required parameters

#### `newEvaluationResultIdentifier'`

``` purescript
newEvaluationResultIdentifier' :: ({ "EvaluationResultQualifier" :: NullOrUndefined (EvaluationResultQualifier), "OrderingTimestamp" :: NullOrUndefined (Date) } -> { "EvaluationResultQualifier" :: NullOrUndefined (EvaluationResultQualifier), "OrderingTimestamp" :: NullOrUndefined (Date) }) -> EvaluationResultIdentifier
```

Constructs EvaluationResultIdentifier's fields from required parameters

#### `EvaluationResultQualifier`

``` purescript
newtype EvaluationResultQualifier
  = EvaluationResultQualifier { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId) }
```

<p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>

##### Instances
``` purescript
Newtype EvaluationResultQualifier _
Generic EvaluationResultQualifier _
Show EvaluationResultQualifier
Decode EvaluationResultQualifier
Encode EvaluationResultQualifier
```

#### `newEvaluationResultQualifier`

``` purescript
newEvaluationResultQualifier :: EvaluationResultQualifier
```

Constructs EvaluationResultQualifier from required parameters

#### `newEvaluationResultQualifier'`

``` purescript
newEvaluationResultQualifier' :: ({ "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId) } -> { "ConfigRuleName" :: NullOrUndefined (StringWithCharLimit64), "ResourceType" :: NullOrUndefined (StringWithCharLimit256), "ResourceId" :: NullOrUndefined (BaseResourceId) }) -> EvaluationResultQualifier
```

Constructs EvaluationResultQualifier's fields from required parameters

#### `EvaluationResults`

``` purescript
newtype EvaluationResults
  = EvaluationResults (Array EvaluationResult)
```

##### Instances
``` purescript
Newtype EvaluationResults _
Generic EvaluationResults _
Show EvaluationResults
Decode EvaluationResults
Encode EvaluationResults
```

#### `Evaluations`

``` purescript
newtype Evaluations
  = Evaluations (Array Evaluation)
```

##### Instances
``` purescript
Newtype Evaluations _
Generic Evaluations _
Show Evaluations
Decode Evaluations
Encode Evaluations
```

#### `EventSource`

``` purescript
newtype EventSource
  = EventSource String
```

##### Instances
``` purescript
Newtype EventSource _
Generic EventSource _
Show EventSource
Decode EventSource
Encode EventSource
```

#### `GetComplianceDetailsByConfigRuleRequest`

``` purescript
newtype GetComplianceDetailsByConfigRuleRequest
  = GetComplianceDetailsByConfigRuleRequest { "ConfigRuleName" :: StringWithCharLimit64, "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "Limit" :: NullOrUndefined (Limit), "NextToken" :: NullOrUndefined (NextToken) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceDetailsByConfigRuleRequest _
Generic GetComplianceDetailsByConfigRuleRequest _
Show GetComplianceDetailsByConfigRuleRequest
Decode GetComplianceDetailsByConfigRuleRequest
Encode GetComplianceDetailsByConfigRuleRequest
```

#### `newGetComplianceDetailsByConfigRuleRequest`

``` purescript
newGetComplianceDetailsByConfigRuleRequest :: StringWithCharLimit64 -> GetComplianceDetailsByConfigRuleRequest
```

Constructs GetComplianceDetailsByConfigRuleRequest from required parameters

#### `newGetComplianceDetailsByConfigRuleRequest'`

``` purescript
newGetComplianceDetailsByConfigRuleRequest' :: StringWithCharLimit64 -> ({ "ConfigRuleName" :: StringWithCharLimit64, "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "Limit" :: NullOrUndefined (Limit), "NextToken" :: NullOrUndefined (NextToken) } -> { "ConfigRuleName" :: StringWithCharLimit64, "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "Limit" :: NullOrUndefined (Limit), "NextToken" :: NullOrUndefined (NextToken) }) -> GetComplianceDetailsByConfigRuleRequest
```

Constructs GetComplianceDetailsByConfigRuleRequest's fields from required parameters

#### `GetComplianceDetailsByConfigRuleResponse`

``` purescript
newtype GetComplianceDetailsByConfigRuleResponse
  = GetComplianceDetailsByConfigRuleResponse { "EvaluationResults" :: NullOrUndefined (EvaluationResults), "NextToken" :: NullOrUndefined (NextToken) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceDetailsByConfigRuleResponse _
Generic GetComplianceDetailsByConfigRuleResponse _
Show GetComplianceDetailsByConfigRuleResponse
Decode GetComplianceDetailsByConfigRuleResponse
Encode GetComplianceDetailsByConfigRuleResponse
```

#### `newGetComplianceDetailsByConfigRuleResponse`

``` purescript
newGetComplianceDetailsByConfigRuleResponse :: GetComplianceDetailsByConfigRuleResponse
```

Constructs GetComplianceDetailsByConfigRuleResponse from required parameters

#### `newGetComplianceDetailsByConfigRuleResponse'`

``` purescript
newGetComplianceDetailsByConfigRuleResponse' :: ({ "EvaluationResults" :: NullOrUndefined (EvaluationResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "EvaluationResults" :: NullOrUndefined (EvaluationResults), "NextToken" :: NullOrUndefined (NextToken) }) -> GetComplianceDetailsByConfigRuleResponse
```

Constructs GetComplianceDetailsByConfigRuleResponse's fields from required parameters

#### `GetComplianceDetailsByResourceRequest`

``` purescript
newtype GetComplianceDetailsByResourceRequest
  = GetComplianceDetailsByResourceRequest { "ResourceType" :: StringWithCharLimit256, "ResourceId" :: BaseResourceId, "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceDetailsByResourceRequest _
Generic GetComplianceDetailsByResourceRequest _
Show GetComplianceDetailsByResourceRequest
Decode GetComplianceDetailsByResourceRequest
Encode GetComplianceDetailsByResourceRequest
```

#### `newGetComplianceDetailsByResourceRequest`

``` purescript
newGetComplianceDetailsByResourceRequest :: BaseResourceId -> StringWithCharLimit256 -> GetComplianceDetailsByResourceRequest
```

Constructs GetComplianceDetailsByResourceRequest from required parameters

#### `newGetComplianceDetailsByResourceRequest'`

``` purescript
newGetComplianceDetailsByResourceRequest' :: BaseResourceId -> StringWithCharLimit256 -> ({ "ResourceType" :: StringWithCharLimit256, "ResourceId" :: BaseResourceId, "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "NextToken" :: NullOrUndefined (String) } -> { "ResourceType" :: StringWithCharLimit256, "ResourceId" :: BaseResourceId, "ComplianceTypes" :: NullOrUndefined (ComplianceTypes), "NextToken" :: NullOrUndefined (String) }) -> GetComplianceDetailsByResourceRequest
```

Constructs GetComplianceDetailsByResourceRequest's fields from required parameters

#### `GetComplianceDetailsByResourceResponse`

``` purescript
newtype GetComplianceDetailsByResourceResponse
  = GetComplianceDetailsByResourceResponse { "EvaluationResults" :: NullOrUndefined (EvaluationResults), "NextToken" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceDetailsByResourceResponse _
Generic GetComplianceDetailsByResourceResponse _
Show GetComplianceDetailsByResourceResponse
Decode GetComplianceDetailsByResourceResponse
Encode GetComplianceDetailsByResourceResponse
```

#### `newGetComplianceDetailsByResourceResponse`

``` purescript
newGetComplianceDetailsByResourceResponse :: GetComplianceDetailsByResourceResponse
```

Constructs GetComplianceDetailsByResourceResponse from required parameters

#### `newGetComplianceDetailsByResourceResponse'`

``` purescript
newGetComplianceDetailsByResourceResponse' :: ({ "EvaluationResults" :: NullOrUndefined (EvaluationResults), "NextToken" :: NullOrUndefined (String) } -> { "EvaluationResults" :: NullOrUndefined (EvaluationResults), "NextToken" :: NullOrUndefined (String) }) -> GetComplianceDetailsByResourceResponse
```

Constructs GetComplianceDetailsByResourceResponse's fields from required parameters

#### `GetComplianceSummaryByConfigRuleResponse`

``` purescript
newtype GetComplianceSummaryByConfigRuleResponse
  = GetComplianceSummaryByConfigRuleResponse { "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceSummaryByConfigRuleResponse _
Generic GetComplianceSummaryByConfigRuleResponse _
Show GetComplianceSummaryByConfigRuleResponse
Decode GetComplianceSummaryByConfigRuleResponse
Encode GetComplianceSummaryByConfigRuleResponse
```

#### `newGetComplianceSummaryByConfigRuleResponse`

``` purescript
newGetComplianceSummaryByConfigRuleResponse :: GetComplianceSummaryByConfigRuleResponse
```

Constructs GetComplianceSummaryByConfigRuleResponse from required parameters

#### `newGetComplianceSummaryByConfigRuleResponse'`

``` purescript
newGetComplianceSummaryByConfigRuleResponse' :: ({ "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) } -> { "ComplianceSummary" :: NullOrUndefined (ComplianceSummary) }) -> GetComplianceSummaryByConfigRuleResponse
```

Constructs GetComplianceSummaryByConfigRuleResponse's fields from required parameters

#### `GetComplianceSummaryByResourceTypeRequest`

``` purescript
newtype GetComplianceSummaryByResourceTypeRequest
  = GetComplianceSummaryByResourceTypeRequest { "ResourceTypes" :: NullOrUndefined (ResourceTypes) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceSummaryByResourceTypeRequest _
Generic GetComplianceSummaryByResourceTypeRequest _
Show GetComplianceSummaryByResourceTypeRequest
Decode GetComplianceSummaryByResourceTypeRequest
Encode GetComplianceSummaryByResourceTypeRequest
```

#### `newGetComplianceSummaryByResourceTypeRequest`

``` purescript
newGetComplianceSummaryByResourceTypeRequest :: GetComplianceSummaryByResourceTypeRequest
```

Constructs GetComplianceSummaryByResourceTypeRequest from required parameters

#### `newGetComplianceSummaryByResourceTypeRequest'`

``` purescript
newGetComplianceSummaryByResourceTypeRequest' :: ({ "ResourceTypes" :: NullOrUndefined (ResourceTypes) } -> { "ResourceTypes" :: NullOrUndefined (ResourceTypes) }) -> GetComplianceSummaryByResourceTypeRequest
```

Constructs GetComplianceSummaryByResourceTypeRequest's fields from required parameters

#### `GetComplianceSummaryByResourceTypeResponse`

``` purescript
newtype GetComplianceSummaryByResourceTypeResponse
  = GetComplianceSummaryByResourceTypeResponse { "ComplianceSummariesByResourceType" :: NullOrUndefined (ComplianceSummariesByResourceType) }
```

<p/>

##### Instances
``` purescript
Newtype GetComplianceSummaryByResourceTypeResponse _
Generic GetComplianceSummaryByResourceTypeResponse _
Show GetComplianceSummaryByResourceTypeResponse
Decode GetComplianceSummaryByResourceTypeResponse
Encode GetComplianceSummaryByResourceTypeResponse
```

#### `newGetComplianceSummaryByResourceTypeResponse`

``` purescript
newGetComplianceSummaryByResourceTypeResponse :: GetComplianceSummaryByResourceTypeResponse
```

Constructs GetComplianceSummaryByResourceTypeResponse from required parameters

#### `newGetComplianceSummaryByResourceTypeResponse'`

``` purescript
newGetComplianceSummaryByResourceTypeResponse' :: ({ "ComplianceSummariesByResourceType" :: NullOrUndefined (ComplianceSummariesByResourceType) } -> { "ComplianceSummariesByResourceType" :: NullOrUndefined (ComplianceSummariesByResourceType) }) -> GetComplianceSummaryByResourceTypeResponse
```

Constructs GetComplianceSummaryByResourceTypeResponse's fields from required parameters

#### `GetDiscoveredResourceCountsRequest`

``` purescript
newtype GetDiscoveredResourceCountsRequest
  = GetDiscoveredResourceCountsRequest { resourceTypes :: NullOrUndefined (ResourceTypes), limit :: NullOrUndefined (Limit), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetDiscoveredResourceCountsRequest _
Generic GetDiscoveredResourceCountsRequest _
Show GetDiscoveredResourceCountsRequest
Decode GetDiscoveredResourceCountsRequest
Encode GetDiscoveredResourceCountsRequest
```

#### `newGetDiscoveredResourceCountsRequest`

``` purescript
newGetDiscoveredResourceCountsRequest :: GetDiscoveredResourceCountsRequest
```

Constructs GetDiscoveredResourceCountsRequest from required parameters

#### `newGetDiscoveredResourceCountsRequest'`

``` purescript
newGetDiscoveredResourceCountsRequest' :: ({ resourceTypes :: NullOrUndefined (ResourceTypes), limit :: NullOrUndefined (Limit), nextToken :: NullOrUndefined (NextToken) } -> { resourceTypes :: NullOrUndefined (ResourceTypes), limit :: NullOrUndefined (Limit), nextToken :: NullOrUndefined (NextToken) }) -> GetDiscoveredResourceCountsRequest
```

Constructs GetDiscoveredResourceCountsRequest's fields from required parameters

#### `GetDiscoveredResourceCountsResponse`

``` purescript
newtype GetDiscoveredResourceCountsResponse
  = GetDiscoveredResourceCountsResponse { totalDiscoveredResources :: NullOrUndefined (Number), resourceCounts :: NullOrUndefined (ResourceCounts), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetDiscoveredResourceCountsResponse _
Generic GetDiscoveredResourceCountsResponse _
Show GetDiscoveredResourceCountsResponse
Decode GetDiscoveredResourceCountsResponse
Encode GetDiscoveredResourceCountsResponse
```

#### `newGetDiscoveredResourceCountsResponse`

``` purescript
newGetDiscoveredResourceCountsResponse :: GetDiscoveredResourceCountsResponse
```

Constructs GetDiscoveredResourceCountsResponse from required parameters

#### `newGetDiscoveredResourceCountsResponse'`

``` purescript
newGetDiscoveredResourceCountsResponse' :: ({ totalDiscoveredResources :: NullOrUndefined (Number), resourceCounts :: NullOrUndefined (ResourceCounts), nextToken :: NullOrUndefined (NextToken) } -> { totalDiscoveredResources :: NullOrUndefined (Number), resourceCounts :: NullOrUndefined (ResourceCounts), nextToken :: NullOrUndefined (NextToken) }) -> GetDiscoveredResourceCountsResponse
```

Constructs GetDiscoveredResourceCountsResponse's fields from required parameters

#### `GetResourceConfigHistoryRequest`

``` purescript
newtype GetResourceConfigHistoryRequest
  = GetResourceConfigHistoryRequest { resourceType :: ResourceType, resourceId :: ResourceId, laterTime :: NullOrUndefined (LaterTime), earlierTime :: NullOrUndefined (EarlierTime), chronologicalOrder :: NullOrUndefined (ChronologicalOrder), limit :: NullOrUndefined (Limit), nextToken :: NullOrUndefined (NextToken) }
```

<p>The input for the <a>GetResourceConfigHistory</a> action.</p>

##### Instances
``` purescript
Newtype GetResourceConfigHistoryRequest _
Generic GetResourceConfigHistoryRequest _
Show GetResourceConfigHistoryRequest
Decode GetResourceConfigHistoryRequest
Encode GetResourceConfigHistoryRequest
```

#### `newGetResourceConfigHistoryRequest`

``` purescript
newGetResourceConfigHistoryRequest :: ResourceId -> ResourceType -> GetResourceConfigHistoryRequest
```

Constructs GetResourceConfigHistoryRequest from required parameters

#### `newGetResourceConfigHistoryRequest'`

``` purescript
newGetResourceConfigHistoryRequest' :: ResourceId -> ResourceType -> ({ resourceType :: ResourceType, resourceId :: ResourceId, laterTime :: NullOrUndefined (LaterTime), earlierTime :: NullOrUndefined (EarlierTime), chronologicalOrder :: NullOrUndefined (ChronologicalOrder), limit :: NullOrUndefined (Limit), nextToken :: NullOrUndefined (NextToken) } -> { resourceType :: ResourceType, resourceId :: ResourceId, laterTime :: NullOrUndefined (LaterTime), earlierTime :: NullOrUndefined (EarlierTime), chronologicalOrder :: NullOrUndefined (ChronologicalOrder), limit :: NullOrUndefined (Limit), nextToken :: NullOrUndefined (NextToken) }) -> GetResourceConfigHistoryRequest
```

Constructs GetResourceConfigHistoryRequest's fields from required parameters

#### `GetResourceConfigHistoryResponse`

``` purescript
newtype GetResourceConfigHistoryResponse
  = GetResourceConfigHistoryResponse { configurationItems :: NullOrUndefined (ConfigurationItemList), nextToken :: NullOrUndefined (NextToken) }
```

<p>The output for the <a>GetResourceConfigHistory</a> action.</p>

##### Instances
``` purescript
Newtype GetResourceConfigHistoryResponse _
Generic GetResourceConfigHistoryResponse _
Show GetResourceConfigHistoryResponse
Decode GetResourceConfigHistoryResponse
Encode GetResourceConfigHistoryResponse
```

#### `newGetResourceConfigHistoryResponse`

``` purescript
newGetResourceConfigHistoryResponse :: GetResourceConfigHistoryResponse
```

Constructs GetResourceConfigHistoryResponse from required parameters

#### `newGetResourceConfigHistoryResponse'`

``` purescript
newGetResourceConfigHistoryResponse' :: ({ configurationItems :: NullOrUndefined (ConfigurationItemList), nextToken :: NullOrUndefined (NextToken) } -> { configurationItems :: NullOrUndefined (ConfigurationItemList), nextToken :: NullOrUndefined (NextToken) }) -> GetResourceConfigHistoryResponse
```

Constructs GetResourceConfigHistoryResponse's fields from required parameters

#### `IncludeGlobalResourceTypes`

``` purescript
newtype IncludeGlobalResourceTypes
  = IncludeGlobalResourceTypes Boolean
```

##### Instances
``` purescript
Newtype IncludeGlobalResourceTypes _
Generic IncludeGlobalResourceTypes _
Show IncludeGlobalResourceTypes
Decode IncludeGlobalResourceTypes
Encode IncludeGlobalResourceTypes
```

#### `InsufficientDeliveryPolicyException`

``` purescript
newtype InsufficientDeliveryPolicyException
  = InsufficientDeliveryPolicyException NoArguments
```

<p>Your Amazon S3 bucket policy does not permit AWS Config to write to it.</p>

##### Instances
``` purescript
Newtype InsufficientDeliveryPolicyException _
Generic InsufficientDeliveryPolicyException _
Show InsufficientDeliveryPolicyException
Decode InsufficientDeliveryPolicyException
Encode InsufficientDeliveryPolicyException
```

#### `InsufficientPermissionsException`

``` purescript
newtype InsufficientPermissionsException
  = InsufficientPermissionsException NoArguments
```

<p>Indicates one of the following errors:</p> <ul> <li> <p>The rule cannot be created because the IAM role assigned to AWS Config lacks permissions to perform the config:Put* action.</p> </li> <li> <p>The AWS Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p> </li> </ul>

##### Instances
``` purescript
Newtype InsufficientPermissionsException _
Generic InsufficientPermissionsException _
Show InsufficientPermissionsException
Decode InsufficientPermissionsException
Encode InsufficientPermissionsException
```

#### `InvalidConfigurationRecorderNameException`

``` purescript
newtype InvalidConfigurationRecorderNameException
  = InvalidConfigurationRecorderNameException NoArguments
```

<p>You have provided a configuration recorder name that is not valid.</p>

##### Instances
``` purescript
Newtype InvalidConfigurationRecorderNameException _
Generic InvalidConfigurationRecorderNameException _
Show InvalidConfigurationRecorderNameException
Decode InvalidConfigurationRecorderNameException
Encode InvalidConfigurationRecorderNameException
```

#### `InvalidDeliveryChannelNameException`

``` purescript
newtype InvalidDeliveryChannelNameException
  = InvalidDeliveryChannelNameException NoArguments
```

<p>The specified delivery channel name is not valid.</p>

##### Instances
``` purescript
Newtype InvalidDeliveryChannelNameException _
Generic InvalidDeliveryChannelNameException _
Show InvalidDeliveryChannelNameException
Decode InvalidDeliveryChannelNameException
Encode InvalidDeliveryChannelNameException
```

#### `InvalidLimitException`

``` purescript
newtype InvalidLimitException
  = InvalidLimitException NoArguments
```

<p>The specified limit is outside the allowable range.</p>

##### Instances
``` purescript
Newtype InvalidLimitException _
Generic InvalidLimitException _
Show InvalidLimitException
Decode InvalidLimitException
Encode InvalidLimitException
```

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException NoArguments
```

<p>The specified next token is invalid. Specify the <code>NextToken</code> string that was returned in the previous response to get the next page of results.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException NoArguments
```

<p>One or more of the specified parameters are invalid. Verify that your parameters are valid and try again.</p>

##### Instances
``` purescript
Newtype InvalidParameterValueException _
Generic InvalidParameterValueException _
Show InvalidParameterValueException
Decode InvalidParameterValueException
Encode InvalidParameterValueException
```

#### `InvalidRecordingGroupException`

``` purescript
newtype InvalidRecordingGroupException
  = InvalidRecordingGroupException NoArguments
```

<p>AWS Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values could also be incorrectly formatted.</p>

##### Instances
``` purescript
Newtype InvalidRecordingGroupException _
Generic InvalidRecordingGroupException _
Show InvalidRecordingGroupException
Decode InvalidRecordingGroupException
Encode InvalidRecordingGroupException
```

#### `InvalidResultTokenException`

``` purescript
newtype InvalidResultTokenException
  = InvalidResultTokenException NoArguments
```

<p>The specified <code>ResultToken</code> is invalid.</p>

##### Instances
``` purescript
Newtype InvalidResultTokenException _
Generic InvalidResultTokenException _
Show InvalidResultTokenException
Decode InvalidResultTokenException
Encode InvalidResultTokenException
```

#### `InvalidRoleException`

``` purescript
newtype InvalidRoleException
  = InvalidRoleException NoArguments
```

<p>You have provided a null or empty role ARN.</p>

##### Instances
``` purescript
Newtype InvalidRoleException _
Generic InvalidRoleException _
Show InvalidRoleException
Decode InvalidRoleException
Encode InvalidRoleException
```

#### `InvalidS3KeyPrefixException`

``` purescript
newtype InvalidS3KeyPrefixException
  = InvalidS3KeyPrefixException NoArguments
```

<p>The specified Amazon S3 key prefix is not valid.</p>

##### Instances
``` purescript
Newtype InvalidS3KeyPrefixException _
Generic InvalidS3KeyPrefixException _
Show InvalidS3KeyPrefixException
Decode InvalidS3KeyPrefixException
Encode InvalidS3KeyPrefixException
```

#### `InvalidSNSTopicARNException`

``` purescript
newtype InvalidSNSTopicARNException
  = InvalidSNSTopicARNException NoArguments
```

<p>The specified Amazon SNS topic does not exist.</p>

##### Instances
``` purescript
Newtype InvalidSNSTopicARNException _
Generic InvalidSNSTopicARNException _
Show InvalidSNSTopicARNException
Decode InvalidSNSTopicARNException
Encode InvalidSNSTopicARNException
```

#### `InvalidTimeRangeException`

``` purescript
newtype InvalidTimeRangeException
  = InvalidTimeRangeException NoArguments
```

<p>The specified time range is not valid. The earlier time is not chronologically before the later time.</p>

##### Instances
``` purescript
Newtype InvalidTimeRangeException _
Generic InvalidTimeRangeException _
Show InvalidTimeRangeException
Decode InvalidTimeRangeException
Encode InvalidTimeRangeException
```

#### `LastDeliveryChannelDeleteFailedException`

``` purescript
newtype LastDeliveryChannelDeleteFailedException
  = LastDeliveryChannelDeleteFailedException NoArguments
```

<p>You cannot delete the delivery channel you specified because the configuration recorder is running.</p>

##### Instances
``` purescript
Newtype LastDeliveryChannelDeleteFailedException _
Generic LastDeliveryChannelDeleteFailedException _
Show LastDeliveryChannelDeleteFailedException
Decode LastDeliveryChannelDeleteFailedException
Encode LastDeliveryChannelDeleteFailedException
```

#### `LaterTime`

``` purescript
newtype LaterTime
  = LaterTime Timestamp
```

##### Instances
``` purescript
Newtype LaterTime _
Generic LaterTime _
Show LaterTime
Decode LaterTime
Encode LaterTime
```

#### `Limit`

``` purescript
newtype Limit
  = Limit Int
```

##### Instances
``` purescript
Newtype Limit _
Generic Limit _
Show Limit
Decode Limit
Encode Limit
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p>This exception is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per minute.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `ListDiscoveredResourcesRequest`

``` purescript
newtype ListDiscoveredResourcesRequest
  = ListDiscoveredResourcesRequest { resourceType :: ResourceType, resourceIds :: NullOrUndefined (ResourceIdList), resourceName :: NullOrUndefined (ResourceName), limit :: NullOrUndefined (Limit), includeDeletedResources :: NullOrUndefined (Boolean), nextToken :: NullOrUndefined (NextToken) }
```

<p/>

##### Instances
``` purescript
Newtype ListDiscoveredResourcesRequest _
Generic ListDiscoveredResourcesRequest _
Show ListDiscoveredResourcesRequest
Decode ListDiscoveredResourcesRequest
Encode ListDiscoveredResourcesRequest
```

#### `newListDiscoveredResourcesRequest`

``` purescript
newListDiscoveredResourcesRequest :: ResourceType -> ListDiscoveredResourcesRequest
```

Constructs ListDiscoveredResourcesRequest from required parameters

#### `newListDiscoveredResourcesRequest'`

``` purescript
newListDiscoveredResourcesRequest' :: ResourceType -> ({ resourceType :: ResourceType, resourceIds :: NullOrUndefined (ResourceIdList), resourceName :: NullOrUndefined (ResourceName), limit :: NullOrUndefined (Limit), includeDeletedResources :: NullOrUndefined (Boolean), nextToken :: NullOrUndefined (NextToken) } -> { resourceType :: ResourceType, resourceIds :: NullOrUndefined (ResourceIdList), resourceName :: NullOrUndefined (ResourceName), limit :: NullOrUndefined (Limit), includeDeletedResources :: NullOrUndefined (Boolean), nextToken :: NullOrUndefined (NextToken) }) -> ListDiscoveredResourcesRequest
```

Constructs ListDiscoveredResourcesRequest's fields from required parameters

#### `ListDiscoveredResourcesResponse`

``` purescript
newtype ListDiscoveredResourcesResponse
  = ListDiscoveredResourcesResponse { resourceIdentifiers :: NullOrUndefined (ResourceIdentifierList), nextToken :: NullOrUndefined (NextToken) }
```

<p/>

##### Instances
``` purescript
Newtype ListDiscoveredResourcesResponse _
Generic ListDiscoveredResourcesResponse _
Show ListDiscoveredResourcesResponse
Decode ListDiscoveredResourcesResponse
Encode ListDiscoveredResourcesResponse
```

#### `newListDiscoveredResourcesResponse`

``` purescript
newListDiscoveredResourcesResponse :: ListDiscoveredResourcesResponse
```

Constructs ListDiscoveredResourcesResponse from required parameters

#### `newListDiscoveredResourcesResponse'`

``` purescript
newListDiscoveredResourcesResponse' :: ({ resourceIdentifiers :: NullOrUndefined (ResourceIdentifierList), nextToken :: NullOrUndefined (NextToken) } -> { resourceIdentifiers :: NullOrUndefined (ResourceIdentifierList), nextToken :: NullOrUndefined (NextToken) }) -> ListDiscoveredResourcesResponse
```

Constructs ListDiscoveredResourcesResponse's fields from required parameters

#### `MaxNumberOfConfigRulesExceededException`

``` purescript
newtype MaxNumberOfConfigRulesExceededException
  = MaxNumberOfConfigRulesExceededException NoArguments
```

<p>Failed to add the AWS Config rule because the account already contains the maximum number of 50 rules. Consider deleting any deactivated rules before adding new rules.</p>

##### Instances
``` purescript
Newtype MaxNumberOfConfigRulesExceededException _
Generic MaxNumberOfConfigRulesExceededException _
Show MaxNumberOfConfigRulesExceededException
Decode MaxNumberOfConfigRulesExceededException
Encode MaxNumberOfConfigRulesExceededException
```

#### `MaxNumberOfConfigurationRecordersExceededException`

``` purescript
newtype MaxNumberOfConfigurationRecordersExceededException
  = MaxNumberOfConfigurationRecordersExceededException NoArguments
```

<p>You have reached the limit on the number of recorders you can create.</p>

##### Instances
``` purescript
Newtype MaxNumberOfConfigurationRecordersExceededException _
Generic MaxNumberOfConfigurationRecordersExceededException _
Show MaxNumberOfConfigurationRecordersExceededException
Decode MaxNumberOfConfigurationRecordersExceededException
Encode MaxNumberOfConfigurationRecordersExceededException
```

#### `MaxNumberOfDeliveryChannelsExceededException`

``` purescript
newtype MaxNumberOfDeliveryChannelsExceededException
  = MaxNumberOfDeliveryChannelsExceededException NoArguments
```

<p>You have reached the limit on the number of delivery channels you can create.</p>

##### Instances
``` purescript
Newtype MaxNumberOfDeliveryChannelsExceededException _
Generic MaxNumberOfDeliveryChannelsExceededException _
Show MaxNumberOfDeliveryChannelsExceededException
Decode MaxNumberOfDeliveryChannelsExceededException
Encode MaxNumberOfDeliveryChannelsExceededException
```

#### `MaximumExecutionFrequency`

``` purescript
newtype MaximumExecutionFrequency
  = MaximumExecutionFrequency String
```

##### Instances
``` purescript
Newtype MaximumExecutionFrequency _
Generic MaximumExecutionFrequency _
Show MaximumExecutionFrequency
Decode MaximumExecutionFrequency
Encode MaximumExecutionFrequency
```

#### `MessageType`

``` purescript
newtype MessageType
  = MessageType String
```

##### Instances
``` purescript
Newtype MessageType _
Generic MessageType _
Show MessageType
Decode MessageType
Encode MessageType
```

#### `Name`

``` purescript
newtype Name
  = Name String
```

##### Instances
``` purescript
Newtype Name _
Generic Name _
Show Name
Decode Name
Encode Name
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NoAvailableConfigurationRecorderException`

``` purescript
newtype NoAvailableConfigurationRecorderException
  = NoAvailableConfigurationRecorderException NoArguments
```

<p>There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.</p>

##### Instances
``` purescript
Newtype NoAvailableConfigurationRecorderException _
Generic NoAvailableConfigurationRecorderException _
Show NoAvailableConfigurationRecorderException
Decode NoAvailableConfigurationRecorderException
Encode NoAvailableConfigurationRecorderException
```

#### `NoAvailableDeliveryChannelException`

``` purescript
newtype NoAvailableDeliveryChannelException
  = NoAvailableDeliveryChannelException NoArguments
```

<p>There is no delivery channel available to record configurations.</p>

##### Instances
``` purescript
Newtype NoAvailableDeliveryChannelException _
Generic NoAvailableDeliveryChannelException _
Show NoAvailableDeliveryChannelException
Decode NoAvailableDeliveryChannelException
Encode NoAvailableDeliveryChannelException
```

#### `NoRunningConfigurationRecorderException`

``` purescript
newtype NoRunningConfigurationRecorderException
  = NoRunningConfigurationRecorderException NoArguments
```

<p>There is no configuration recorder running.</p>

##### Instances
``` purescript
Newtype NoRunningConfigurationRecorderException _
Generic NoRunningConfigurationRecorderException _
Show NoRunningConfigurationRecorderException
Decode NoRunningConfigurationRecorderException
Encode NoRunningConfigurationRecorderException
```

#### `NoSuchBucketException`

``` purescript
newtype NoSuchBucketException
  = NoSuchBucketException NoArguments
```

<p>The specified Amazon S3 bucket does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchBucketException _
Generic NoSuchBucketException _
Show NoSuchBucketException
Decode NoSuchBucketException
Encode NoSuchBucketException
```

#### `NoSuchConfigRuleException`

``` purescript
newtype NoSuchConfigRuleException
  = NoSuchConfigRuleException NoArguments
```

<p>One or more AWS Config rules in the request are invalid. Verify that the rule names are correct and try again.</p>

##### Instances
``` purescript
Newtype NoSuchConfigRuleException _
Generic NoSuchConfigRuleException _
Show NoSuchConfigRuleException
Decode NoSuchConfigRuleException
Encode NoSuchConfigRuleException
```

#### `NoSuchConfigurationRecorderException`

``` purescript
newtype NoSuchConfigurationRecorderException
  = NoSuchConfigurationRecorderException NoArguments
```

<p>You have specified a configuration recorder that does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchConfigurationRecorderException _
Generic NoSuchConfigurationRecorderException _
Show NoSuchConfigurationRecorderException
Decode NoSuchConfigurationRecorderException
Encode NoSuchConfigurationRecorderException
```

#### `NoSuchDeliveryChannelException`

``` purescript
newtype NoSuchDeliveryChannelException
  = NoSuchDeliveryChannelException NoArguments
```

<p>You have specified a delivery channel that does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchDeliveryChannelException _
Generic NoSuchDeliveryChannelException _
Show NoSuchDeliveryChannelException
Decode NoSuchDeliveryChannelException
Encode NoSuchDeliveryChannelException
```

#### `OrderingTimestamp`

``` purescript
newtype OrderingTimestamp
  = OrderingTimestamp Timestamp
```

##### Instances
``` purescript
Newtype OrderingTimestamp _
Generic OrderingTimestamp _
Show OrderingTimestamp
Decode OrderingTimestamp
Encode OrderingTimestamp
```

#### `Owner`

``` purescript
newtype Owner
  = Owner String
```

##### Instances
``` purescript
Newtype Owner _
Generic Owner _
Show Owner
Decode Owner
Encode Owner
```

#### `PutConfigRuleRequest`

``` purescript
newtype PutConfigRuleRequest
  = PutConfigRuleRequest { "ConfigRule" :: ConfigRule }
```

##### Instances
``` purescript
Newtype PutConfigRuleRequest _
Generic PutConfigRuleRequest _
Show PutConfigRuleRequest
Decode PutConfigRuleRequest
Encode PutConfigRuleRequest
```

#### `newPutConfigRuleRequest`

``` purescript
newPutConfigRuleRequest :: ConfigRule -> PutConfigRuleRequest
```

Constructs PutConfigRuleRequest from required parameters

#### `newPutConfigRuleRequest'`

``` purescript
newPutConfigRuleRequest' :: ConfigRule -> ({ "ConfigRule" :: ConfigRule } -> { "ConfigRule" :: ConfigRule }) -> PutConfigRuleRequest
```

Constructs PutConfigRuleRequest's fields from required parameters

#### `PutConfigurationRecorderRequest`

``` purescript
newtype PutConfigurationRecorderRequest
  = PutConfigurationRecorderRequest { "ConfigurationRecorder" :: ConfigurationRecorder }
```

<p>The input for the <a>PutConfigurationRecorder</a> action.</p>

##### Instances
``` purescript
Newtype PutConfigurationRecorderRequest _
Generic PutConfigurationRecorderRequest _
Show PutConfigurationRecorderRequest
Decode PutConfigurationRecorderRequest
Encode PutConfigurationRecorderRequest
```

#### `newPutConfigurationRecorderRequest`

``` purescript
newPutConfigurationRecorderRequest :: ConfigurationRecorder -> PutConfigurationRecorderRequest
```

Constructs PutConfigurationRecorderRequest from required parameters

#### `newPutConfigurationRecorderRequest'`

``` purescript
newPutConfigurationRecorderRequest' :: ConfigurationRecorder -> ({ "ConfigurationRecorder" :: ConfigurationRecorder } -> { "ConfigurationRecorder" :: ConfigurationRecorder }) -> PutConfigurationRecorderRequest
```

Constructs PutConfigurationRecorderRequest's fields from required parameters

#### `PutDeliveryChannelRequest`

``` purescript
newtype PutDeliveryChannelRequest
  = PutDeliveryChannelRequest { "DeliveryChannel" :: DeliveryChannel }
```

<p>The input for the <a>PutDeliveryChannel</a> action.</p>

##### Instances
``` purescript
Newtype PutDeliveryChannelRequest _
Generic PutDeliveryChannelRequest _
Show PutDeliveryChannelRequest
Decode PutDeliveryChannelRequest
Encode PutDeliveryChannelRequest
```

#### `newPutDeliveryChannelRequest`

``` purescript
newPutDeliveryChannelRequest :: DeliveryChannel -> PutDeliveryChannelRequest
```

Constructs PutDeliveryChannelRequest from required parameters

#### `newPutDeliveryChannelRequest'`

``` purescript
newPutDeliveryChannelRequest' :: DeliveryChannel -> ({ "DeliveryChannel" :: DeliveryChannel } -> { "DeliveryChannel" :: DeliveryChannel }) -> PutDeliveryChannelRequest
```

Constructs PutDeliveryChannelRequest's fields from required parameters

#### `PutEvaluationsRequest`

``` purescript
newtype PutEvaluationsRequest
  = PutEvaluationsRequest { "Evaluations" :: NullOrUndefined (Evaluations), "ResultToken" :: String, "TestMode" :: NullOrUndefined (Boolean) }
```

<p/>

##### Instances
``` purescript
Newtype PutEvaluationsRequest _
Generic PutEvaluationsRequest _
Show PutEvaluationsRequest
Decode PutEvaluationsRequest
Encode PutEvaluationsRequest
```

#### `newPutEvaluationsRequest`

``` purescript
newPutEvaluationsRequest :: String -> PutEvaluationsRequest
```

Constructs PutEvaluationsRequest from required parameters

#### `newPutEvaluationsRequest'`

``` purescript
newPutEvaluationsRequest' :: String -> ({ "Evaluations" :: NullOrUndefined (Evaluations), "ResultToken" :: String, "TestMode" :: NullOrUndefined (Boolean) } -> { "Evaluations" :: NullOrUndefined (Evaluations), "ResultToken" :: String, "TestMode" :: NullOrUndefined (Boolean) }) -> PutEvaluationsRequest
```

Constructs PutEvaluationsRequest's fields from required parameters

#### `PutEvaluationsResponse`

``` purescript
newtype PutEvaluationsResponse
  = PutEvaluationsResponse { "FailedEvaluations" :: NullOrUndefined (Evaluations) }
```

<p/>

##### Instances
``` purescript
Newtype PutEvaluationsResponse _
Generic PutEvaluationsResponse _
Show PutEvaluationsResponse
Decode PutEvaluationsResponse
Encode PutEvaluationsResponse
```

#### `newPutEvaluationsResponse`

``` purescript
newPutEvaluationsResponse :: PutEvaluationsResponse
```

Constructs PutEvaluationsResponse from required parameters

#### `newPutEvaluationsResponse'`

``` purescript
newPutEvaluationsResponse' :: ({ "FailedEvaluations" :: NullOrUndefined (Evaluations) } -> { "FailedEvaluations" :: NullOrUndefined (Evaluations) }) -> PutEvaluationsResponse
```

Constructs PutEvaluationsResponse's fields from required parameters

#### `RecorderName`

``` purescript
newtype RecorderName
  = RecorderName String
```

##### Instances
``` purescript
Newtype RecorderName _
Generic RecorderName _
Show RecorderName
Decode RecorderName
Encode RecorderName
```

#### `RecorderStatus`

``` purescript
newtype RecorderStatus
  = RecorderStatus String
```

##### Instances
``` purescript
Newtype RecorderStatus _
Generic RecorderStatus _
Show RecorderStatus
Decode RecorderStatus
Encode RecorderStatus
```

#### `RecordingGroup`

``` purescript
newtype RecordingGroup
  = RecordingGroup { allSupported :: NullOrUndefined (AllSupported), includeGlobalResourceTypes :: NullOrUndefined (IncludeGlobalResourceTypes), resourceTypes :: NullOrUndefined (ResourceTypeList) }
```

<p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported resource types</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources AWS Config Records</a>.</p>

##### Instances
``` purescript
Newtype RecordingGroup _
Generic RecordingGroup _
Show RecordingGroup
Decode RecordingGroup
Encode RecordingGroup
```

#### `newRecordingGroup`

``` purescript
newRecordingGroup :: RecordingGroup
```

Constructs RecordingGroup from required parameters

#### `newRecordingGroup'`

``` purescript
newRecordingGroup' :: ({ allSupported :: NullOrUndefined (AllSupported), includeGlobalResourceTypes :: NullOrUndefined (IncludeGlobalResourceTypes), resourceTypes :: NullOrUndefined (ResourceTypeList) } -> { allSupported :: NullOrUndefined (AllSupported), includeGlobalResourceTypes :: NullOrUndefined (IncludeGlobalResourceTypes), resourceTypes :: NullOrUndefined (ResourceTypeList) }) -> RecordingGroup
```

Constructs RecordingGroup's fields from required parameters

#### `ReevaluateConfigRuleNames`

``` purescript
newtype ReevaluateConfigRuleNames
  = ReevaluateConfigRuleNames (Array StringWithCharLimit64)
```

##### Instances
``` purescript
Newtype ReevaluateConfigRuleNames _
Generic ReevaluateConfigRuleNames _
Show ReevaluateConfigRuleNames
Decode ReevaluateConfigRuleNames
Encode ReevaluateConfigRuleNames
```

#### `RelatedEvent`

``` purescript
newtype RelatedEvent
  = RelatedEvent String
```

##### Instances
``` purescript
Newtype RelatedEvent _
Generic RelatedEvent _
Show RelatedEvent
Decode RelatedEvent
Encode RelatedEvent
```

#### `RelatedEventList`

``` purescript
newtype RelatedEventList
  = RelatedEventList (Array RelatedEvent)
```

##### Instances
``` purescript
Newtype RelatedEventList _
Generic RelatedEventList _
Show RelatedEventList
Decode RelatedEventList
Encode RelatedEventList
```

#### `Relationship`

``` purescript
newtype Relationship
  = Relationship { resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), relationshipName :: NullOrUndefined (RelationshipName) }
```

<p>The relationship of the related resource to the main resource.</p>

##### Instances
``` purescript
Newtype Relationship _
Generic Relationship _
Show Relationship
Decode Relationship
Encode Relationship
```

#### `newRelationship`

``` purescript
newRelationship :: Relationship
```

Constructs Relationship from required parameters

#### `newRelationship'`

``` purescript
newRelationship' :: ({ resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), relationshipName :: NullOrUndefined (RelationshipName) } -> { resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), relationshipName :: NullOrUndefined (RelationshipName) }) -> Relationship
```

Constructs Relationship's fields from required parameters

#### `RelationshipList`

``` purescript
newtype RelationshipList
  = RelationshipList (Array Relationship)
```

##### Instances
``` purescript
Newtype RelationshipList _
Generic RelationshipList _
Show RelationshipList
Decode RelationshipList
Encode RelationshipList
```

#### `RelationshipName`

``` purescript
newtype RelationshipName
  = RelationshipName String
```

##### Instances
``` purescript
Newtype RelationshipName _
Generic RelationshipName _
Show RelationshipName
Decode RelationshipName
Encode RelationshipName
```

#### `ResourceCount`

``` purescript
newtype ResourceCount
  = ResourceCount { resourceType :: NullOrUndefined (ResourceType), count :: NullOrUndefined (Number) }
```

<p>An object that contains the resource type and the number of resources.</p>

##### Instances
``` purescript
Newtype ResourceCount _
Generic ResourceCount _
Show ResourceCount
Decode ResourceCount
Encode ResourceCount
```

#### `newResourceCount`

``` purescript
newResourceCount :: ResourceCount
```

Constructs ResourceCount from required parameters

#### `newResourceCount'`

``` purescript
newResourceCount' :: ({ resourceType :: NullOrUndefined (ResourceType), count :: NullOrUndefined (Number) } -> { resourceType :: NullOrUndefined (ResourceType), count :: NullOrUndefined (Number) }) -> ResourceCount
```

Constructs ResourceCount's fields from required parameters

#### `ResourceCounts`

``` purescript
newtype ResourceCounts
  = ResourceCounts (Array ResourceCount)
```

##### Instances
``` purescript
Newtype ResourceCounts _
Generic ResourceCounts _
Show ResourceCounts
Decode ResourceCounts
Encode ResourceCounts
```

#### `ResourceCreationTime`

``` purescript
newtype ResourceCreationTime
  = ResourceCreationTime Timestamp
```

##### Instances
``` purescript
Newtype ResourceCreationTime _
Generic ResourceCreationTime _
Show ResourceCreationTime
Decode ResourceCreationTime
Encode ResourceCreationTime
```

#### `ResourceDeletionTime`

``` purescript
newtype ResourceDeletionTime
  = ResourceDeletionTime Timestamp
```

##### Instances
``` purescript
Newtype ResourceDeletionTime _
Generic ResourceDeletionTime _
Show ResourceDeletionTime
Decode ResourceDeletionTime
Encode ResourceDeletionTime
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `ResourceIdList`

``` purescript
newtype ResourceIdList
  = ResourceIdList (Array ResourceId)
```

##### Instances
``` purescript
Newtype ResourceIdList _
Generic ResourceIdList _
Show ResourceIdList
Decode ResourceIdList
Encode ResourceIdList
```

#### `ResourceIdentifier`

``` purescript
newtype ResourceIdentifier
  = ResourceIdentifier { resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), resourceDeletionTime :: NullOrUndefined (ResourceDeletionTime) }
```

<p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>

##### Instances
``` purescript
Newtype ResourceIdentifier _
Generic ResourceIdentifier _
Show ResourceIdentifier
Decode ResourceIdentifier
Encode ResourceIdentifier
```

#### `newResourceIdentifier`

``` purescript
newResourceIdentifier :: ResourceIdentifier
```

Constructs ResourceIdentifier from required parameters

#### `newResourceIdentifier'`

``` purescript
newResourceIdentifier' :: ({ resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), resourceDeletionTime :: NullOrUndefined (ResourceDeletionTime) } -> { resourceType :: NullOrUndefined (ResourceType), resourceId :: NullOrUndefined (ResourceId), resourceName :: NullOrUndefined (ResourceName), resourceDeletionTime :: NullOrUndefined (ResourceDeletionTime) }) -> ResourceIdentifier
```

Constructs ResourceIdentifier's fields from required parameters

#### `ResourceIdentifierList`

``` purescript
newtype ResourceIdentifierList
  = ResourceIdentifierList (Array ResourceIdentifier)
```

##### Instances
``` purescript
Newtype ResourceIdentifierList _
Generic ResourceIdentifierList _
Show ResourceIdentifierList
Decode ResourceIdentifierList
Encode ResourceIdentifierList
```

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException NoArguments
```

<p>The rule is currently being deleted or the rule is deleting your evaluation results. Try your request again later.</p>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `ResourceName`

``` purescript
newtype ResourceName
  = ResourceName String
```

##### Instances
``` purescript
Newtype ResourceName _
Generic ResourceName _
Show ResourceName
Decode ResourceName
Encode ResourceName
```

#### `ResourceNotDiscoveredException`

``` purescript
newtype ResourceNotDiscoveredException
  = ResourceNotDiscoveredException NoArguments
```

<p>You have specified a resource that is either unknown or has not been discovered.</p>

##### Instances
``` purescript
Newtype ResourceNotDiscoveredException _
Generic ResourceNotDiscoveredException _
Show ResourceNotDiscoveredException
Decode ResourceNotDiscoveredException
Encode ResourceNotDiscoveredException
```

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

##### Instances
``` purescript
Newtype ResourceType _
Generic ResourceType _
Show ResourceType
Decode ResourceType
Encode ResourceType
```

#### `ResourceTypeList`

``` purescript
newtype ResourceTypeList
  = ResourceTypeList (Array ResourceType)
```

##### Instances
``` purescript
Newtype ResourceTypeList _
Generic ResourceTypeList _
Show ResourceTypeList
Decode ResourceTypeList
Encode ResourceTypeList
```

#### `ResourceTypes`

``` purescript
newtype ResourceTypes
  = ResourceTypes (Array StringWithCharLimit256)
```

##### Instances
``` purescript
Newtype ResourceTypes _
Generic ResourceTypes _
Show ResourceTypes
Decode ResourceTypes
Encode ResourceTypes
```

#### `RuleLimit`

``` purescript
newtype RuleLimit
  = RuleLimit Int
```

##### Instances
``` purescript
Newtype RuleLimit _
Generic RuleLimit _
Show RuleLimit
Decode RuleLimit
Encode RuleLimit
```

#### `Scope`

``` purescript
newtype Scope
  = Scope { "ComplianceResourceTypes" :: NullOrUndefined (ComplianceResourceTypes), "TagKey" :: NullOrUndefined (StringWithCharLimit128), "TagValue" :: NullOrUndefined (StringWithCharLimit256), "ComplianceResourceId" :: NullOrUndefined (BaseResourceId) }
```

<p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>

##### Instances
``` purescript
Newtype Scope _
Generic Scope _
Show Scope
Decode Scope
Encode Scope
```

#### `newScope`

``` purescript
newScope :: Scope
```

Constructs Scope from required parameters

#### `newScope'`

``` purescript
newScope' :: ({ "ComplianceResourceTypes" :: NullOrUndefined (ComplianceResourceTypes), "TagKey" :: NullOrUndefined (StringWithCharLimit128), "TagValue" :: NullOrUndefined (StringWithCharLimit256), "ComplianceResourceId" :: NullOrUndefined (BaseResourceId) } -> { "ComplianceResourceTypes" :: NullOrUndefined (ComplianceResourceTypes), "TagKey" :: NullOrUndefined (StringWithCharLimit128), "TagValue" :: NullOrUndefined (StringWithCharLimit256), "ComplianceResourceId" :: NullOrUndefined (BaseResourceId) }) -> Scope
```

Constructs Scope's fields from required parameters

#### `Source`

``` purescript
newtype Source
  = Source { "Owner" :: Owner, "SourceIdentifier" :: StringWithCharLimit256, "SourceDetails" :: NullOrUndefined (SourceDetails) }
```

<p>Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.</p>

##### Instances
``` purescript
Newtype Source _
Generic Source _
Show Source
Decode Source
Encode Source
```

#### `newSource`

``` purescript
newSource :: Owner -> StringWithCharLimit256 -> Source
```

Constructs Source from required parameters

#### `newSource'`

``` purescript
newSource' :: Owner -> StringWithCharLimit256 -> ({ "Owner" :: Owner, "SourceIdentifier" :: StringWithCharLimit256, "SourceDetails" :: NullOrUndefined (SourceDetails) } -> { "Owner" :: Owner, "SourceIdentifier" :: StringWithCharLimit256, "SourceDetails" :: NullOrUndefined (SourceDetails) }) -> Source
```

Constructs Source's fields from required parameters

#### `SourceDetail`

``` purescript
newtype SourceDetail
  = SourceDetail { "EventSource" :: NullOrUndefined (EventSource), "MessageType" :: NullOrUndefined (MessageType), "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) }
```

<p>Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for <code>SourceDetail</code> only for custom rules. </p>

##### Instances
``` purescript
Newtype SourceDetail _
Generic SourceDetail _
Show SourceDetail
Decode SourceDetail
Encode SourceDetail
```

#### `newSourceDetail`

``` purescript
newSourceDetail :: SourceDetail
```

Constructs SourceDetail from required parameters

#### `newSourceDetail'`

``` purescript
newSourceDetail' :: ({ "EventSource" :: NullOrUndefined (EventSource), "MessageType" :: NullOrUndefined (MessageType), "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) } -> { "EventSource" :: NullOrUndefined (EventSource), "MessageType" :: NullOrUndefined (MessageType), "MaximumExecutionFrequency" :: NullOrUndefined (MaximumExecutionFrequency) }) -> SourceDetail
```

Constructs SourceDetail's fields from required parameters

#### `SourceDetails`

``` purescript
newtype SourceDetails
  = SourceDetails (Array SourceDetail)
```

##### Instances
``` purescript
Newtype SourceDetails _
Generic SourceDetails _
Show SourceDetails
Decode SourceDetails
Encode SourceDetails
```

#### `StartConfigRulesEvaluationRequest`

``` purescript
newtype StartConfigRulesEvaluationRequest
  = StartConfigRulesEvaluationRequest { "ConfigRuleNames" :: NullOrUndefined (ReevaluateConfigRuleNames) }
```

<p/>

##### Instances
``` purescript
Newtype StartConfigRulesEvaluationRequest _
Generic StartConfigRulesEvaluationRequest _
Show StartConfigRulesEvaluationRequest
Decode StartConfigRulesEvaluationRequest
Encode StartConfigRulesEvaluationRequest
```

#### `newStartConfigRulesEvaluationRequest`

``` purescript
newStartConfigRulesEvaluationRequest :: StartConfigRulesEvaluationRequest
```

Constructs StartConfigRulesEvaluationRequest from required parameters

#### `newStartConfigRulesEvaluationRequest'`

``` purescript
newStartConfigRulesEvaluationRequest' :: ({ "ConfigRuleNames" :: NullOrUndefined (ReevaluateConfigRuleNames) } -> { "ConfigRuleNames" :: NullOrUndefined (ReevaluateConfigRuleNames) }) -> StartConfigRulesEvaluationRequest
```

Constructs StartConfigRulesEvaluationRequest's fields from required parameters

#### `StartConfigRulesEvaluationResponse`

``` purescript
newtype StartConfigRulesEvaluationResponse
  = StartConfigRulesEvaluationResponse NoArguments
```

<p>The output when you start the evaluation for the specified Config rule.</p>

##### Instances
``` purescript
Newtype StartConfigRulesEvaluationResponse _
Generic StartConfigRulesEvaluationResponse _
Show StartConfigRulesEvaluationResponse
Decode StartConfigRulesEvaluationResponse
Encode StartConfigRulesEvaluationResponse
```

#### `StartConfigurationRecorderRequest`

``` purescript
newtype StartConfigurationRecorderRequest
  = StartConfigurationRecorderRequest { "ConfigurationRecorderName" :: RecorderName }
```

<p>The input for the <a>StartConfigurationRecorder</a> action.</p>

##### Instances
``` purescript
Newtype StartConfigurationRecorderRequest _
Generic StartConfigurationRecorderRequest _
Show StartConfigurationRecorderRequest
Decode StartConfigurationRecorderRequest
Encode StartConfigurationRecorderRequest
```

#### `newStartConfigurationRecorderRequest`

``` purescript
newStartConfigurationRecorderRequest :: RecorderName -> StartConfigurationRecorderRequest
```

Constructs StartConfigurationRecorderRequest from required parameters

#### `newStartConfigurationRecorderRequest'`

``` purescript
newStartConfigurationRecorderRequest' :: RecorderName -> ({ "ConfigurationRecorderName" :: RecorderName } -> { "ConfigurationRecorderName" :: RecorderName }) -> StartConfigurationRecorderRequest
```

Constructs StartConfigurationRecorderRequest's fields from required parameters

#### `StopConfigurationRecorderRequest`

``` purescript
newtype StopConfigurationRecorderRequest
  = StopConfigurationRecorderRequest { "ConfigurationRecorderName" :: RecorderName }
```

<p>The input for the <a>StopConfigurationRecorder</a> action.</p>

##### Instances
``` purescript
Newtype StopConfigurationRecorderRequest _
Generic StopConfigurationRecorderRequest _
Show StopConfigurationRecorderRequest
Decode StopConfigurationRecorderRequest
Encode StopConfigurationRecorderRequest
```

#### `newStopConfigurationRecorderRequest`

``` purescript
newStopConfigurationRecorderRequest :: RecorderName -> StopConfigurationRecorderRequest
```

Constructs StopConfigurationRecorderRequest from required parameters

#### `newStopConfigurationRecorderRequest'`

``` purescript
newStopConfigurationRecorderRequest' :: RecorderName -> ({ "ConfigurationRecorderName" :: RecorderName } -> { "ConfigurationRecorderName" :: RecorderName }) -> StopConfigurationRecorderRequest
```

Constructs StopConfigurationRecorderRequest's fields from required parameters

#### `StringWithCharLimit1024`

``` purescript
newtype StringWithCharLimit1024
  = StringWithCharLimit1024 String
```

##### Instances
``` purescript
Newtype StringWithCharLimit1024 _
Generic StringWithCharLimit1024 _
Show StringWithCharLimit1024
Decode StringWithCharLimit1024
Encode StringWithCharLimit1024
```

#### `StringWithCharLimit128`

``` purescript
newtype StringWithCharLimit128
  = StringWithCharLimit128 String
```

##### Instances
``` purescript
Newtype StringWithCharLimit128 _
Generic StringWithCharLimit128 _
Show StringWithCharLimit128
Decode StringWithCharLimit128
Encode StringWithCharLimit128
```

#### `StringWithCharLimit256`

``` purescript
newtype StringWithCharLimit256
  = StringWithCharLimit256 String
```

##### Instances
``` purescript
Newtype StringWithCharLimit256 _
Generic StringWithCharLimit256 _
Show StringWithCharLimit256
Decode StringWithCharLimit256
Encode StringWithCharLimit256
```

#### `StringWithCharLimit64`

``` purescript
newtype StringWithCharLimit64
  = StringWithCharLimit64 String
```

##### Instances
``` purescript
Newtype StringWithCharLimit64 _
Generic StringWithCharLimit64 _
Show StringWithCharLimit64
Decode StringWithCharLimit64
Encode StringWithCharLimit64
```

#### `SupplementaryConfiguration`

``` purescript
newtype SupplementaryConfiguration
  = SupplementaryConfiguration (StrMap SupplementaryConfigurationValue)
```

##### Instances
``` purescript
Newtype SupplementaryConfiguration _
Generic SupplementaryConfiguration _
Show SupplementaryConfiguration
Decode SupplementaryConfiguration
Encode SupplementaryConfiguration
```

#### `SupplementaryConfigurationName`

``` purescript
newtype SupplementaryConfigurationName
  = SupplementaryConfigurationName String
```

##### Instances
``` purescript
Newtype SupplementaryConfigurationName _
Generic SupplementaryConfigurationName _
Show SupplementaryConfigurationName
Decode SupplementaryConfigurationName
Encode SupplementaryConfigurationName
```

#### `SupplementaryConfigurationValue`

``` purescript
newtype SupplementaryConfigurationValue
  = SupplementaryConfigurationValue String
```

##### Instances
``` purescript
Newtype SupplementaryConfigurationValue _
Generic SupplementaryConfigurationValue _
Show SupplementaryConfigurationValue
Decode SupplementaryConfigurationValue
Encode SupplementaryConfigurationValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags (StrMap Value)
```

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException NoArguments
```

<p>The requested action is not valid.</p>

##### Instances
``` purescript
Newtype ValidationException _
Generic ValidationException _
Show ValidationException
Decode ValidationException
Encode ValidationException
```

#### `Value`

``` purescript
newtype Value
  = Value String
```

##### Instances
``` purescript
Newtype Value _
Generic Value _
Show Value
Decode Value
Encode Value
```

#### `Version`

``` purescript
newtype Version
  = Version String
```

##### Instances
``` purescript
Newtype Version _
Generic Version _
Show Version
Decode Version
Encode Version
```


