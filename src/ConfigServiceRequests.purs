
module AWS.ConfigService.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ConfigService as ConfigService
import AWS.ConfigService.Types as ConfigServiceTypes


-- | <p>Deletes the specified AWS Config rule and all of its evaluation results.</p> <p>AWS Config sets the state of a rule to <code>DELETING</code> until the deletion is complete. You cannot update a rule while it is in this state. If you make a <code>PutConfigRule</code> or <code>DeleteConfigRule</code> request for the rule, you will receive a <code>ResourceInUseException</code>.</p> <p>You can check the state of a rule by using the <code>DescribeConfigRules</code> request.</p>
deleteConfigRule :: forall eff. ConfigService.Service -> ConfigServiceTypes.DeleteConfigRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteConfigRule (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteConfigRule"


-- | <p>Deletes the configuration recorder.</p> <p>After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder.</p> <p>This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the <code>GetResourceConfigHistory</code> action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.</p>
deleteConfigurationRecorder :: forall eff. ConfigService.Service -> ConfigServiceTypes.DeleteConfigurationRecorderRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteConfigurationRecorder (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteConfigurationRecorder"


-- | <p>Deletes the delivery channel.</p> <p>Before you can delete the delivery channel, you must stop the configuration recorder by using the <a>StopConfigurationRecorder</a> action.</p>
deleteDeliveryChannel :: forall eff. ConfigService.Service -> ConfigServiceTypes.DeleteDeliveryChannelRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteDeliveryChannel (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDeliveryChannel"


-- | <p>Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the <a>StartConfigRulesEvaluation</a> API to start evaluating your AWS resources against the rule.</p>
deleteEvaluationResults :: forall eff. ConfigService.Service -> ConfigServiceTypes.DeleteEvaluationResultsRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DeleteEvaluationResultsResponse
deleteEvaluationResults (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEvaluationResults"


-- | <p>Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends following notifications using an Amazon SNS topic that you have specified.</p> <ul> <li> <p>Notification of starting the delivery.</p> </li> <li> <p>Notification of delivery completed, if the delivery was successfully completed.</p> </li> <li> <p>Notification of delivery failure, if the delivery failed to complete.</p> </li> </ul>
deliverConfigSnapshot :: forall eff. ConfigService.Service -> ConfigServiceTypes.DeliverConfigSnapshotRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DeliverConfigSnapshotResponse
deliverConfigSnapshot (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deliverConfigSnapshot"


-- | <p>Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.</p> <p>A rule is compliant if all of the evaluated resources comply with it, and it is noncompliant if any of these resources do not comply.</p> <p>If AWS Config has no current evaluation results for the rule, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>
describeComplianceByConfigRule :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeComplianceByConfigRuleRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeComplianceByConfigRuleResponse
describeComplianceByConfigRule (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeComplianceByConfigRule"


-- | <p>Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.</p> <p>A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.</p> <p>If AWS Config has no current evaluation results for the resource, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions about the rules that evaluate the resource:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>
describeComplianceByResource :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeComplianceByResourceRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeComplianceByResourceResponse
describeComplianceByResource (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeComplianceByResource"


-- | <p>Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.</p>
describeConfigRuleEvaluationStatus :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeConfigRuleEvaluationStatusRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeConfigRuleEvaluationStatusResponse
describeConfigRuleEvaluationStatus (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigRuleEvaluationStatus"


-- | <p>Returns details about your AWS Config rules.</p>
describeConfigRules :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeConfigRulesRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeConfigRulesResponse
describeConfigRules (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigRules"


-- | <p>Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorder associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>
describeConfigurationRecorderStatus :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeConfigurationRecorderStatusRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeConfigurationRecorderStatusResponse
describeConfigurationRecorderStatus (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigurationRecorderStatus"


-- | <p>Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>
describeConfigurationRecorders :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeConfigurationRecordersRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeConfigurationRecordersResponse
describeConfigurationRecorders (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigurationRecorders"


-- | <p>Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>
describeDeliveryChannelStatus :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeDeliveryChannelStatusRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeDeliveryChannelStatusResponse
describeDeliveryChannelStatus (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDeliveryChannelStatus"


-- | <p>Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>
describeDeliveryChannels :: forall eff. ConfigService.Service -> ConfigServiceTypes.DescribeDeliveryChannelsRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.DescribeDeliveryChannelsResponse
describeDeliveryChannels (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDeliveryChannels"


-- | <p>Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.</p>
getComplianceDetailsByConfigRule :: forall eff. ConfigService.Service -> ConfigServiceTypes.GetComplianceDetailsByConfigRuleRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.GetComplianceDetailsByConfigRuleResponse
getComplianceDetailsByConfigRule (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getComplianceDetailsByConfigRule"


-- | <p>Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.</p>
getComplianceDetailsByResource :: forall eff. ConfigService.Service -> ConfigServiceTypes.GetComplianceDetailsByResourceRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.GetComplianceDetailsByResourceResponse
getComplianceDetailsByResource (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getComplianceDetailsByResource"


-- | <p>Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.</p>
getComplianceSummaryByConfigRule :: forall eff. ConfigService.Service ->  Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.GetComplianceSummaryByConfigRuleResponse
getComplianceSummaryByConfigRule (ConfigService.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "getComplianceSummaryByConfigRule"


-- | <p>Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.</p>
getComplianceSummaryByResourceType :: forall eff. ConfigService.Service -> ConfigServiceTypes.GetComplianceSummaryByResourceTypeRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.GetComplianceSummaryByResourceTypeResponse
getComplianceSummaryByResourceType (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getComplianceSummaryByResourceType"


-- | <p>Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account. </p> <p class="title"> <b>Example</b> </p> <ol> <li> <p>AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.</p> </li> <li> <p>You make a call to the <code>GetDiscoveredResourceCounts</code> action and specify that you want all resource types. </p> </li> <li> <p>AWS Config returns the following:</p> <ul> <li> <p>The resource types (EC2 instances, IAM users, and S3 buckets)</p> </li> <li> <p>The number of each resource type (25, 20, and 15)</p> </li> <li> <p>The total number of all resources (60)</p> </li> </ul> </li> </ol> <p>The response is paginated. By default, AWS Config lists 100 <a>ResourceCount</a> objects on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p> <note> <p>If you make a call to the <a>GetDiscoveredResourceCounts</a> action, you may not immediately receive resource counts in the following situations:</p> <ul> <li> <p>You are a new AWS Config customer</p> </li> <li> <p>You just enabled resource recording</p> </li> </ul> <p>It may take a few minutes for AWS Config to record and count your resources. Wait a few minutes and then retry the <a>GetDiscoveredResourceCounts</a> action. </p> </note>
getDiscoveredResourceCounts :: forall eff. ConfigService.Service -> ConfigServiceTypes.GetDiscoveredResourceCountsRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.GetDiscoveredResourceCountsResponse
getDiscoveredResourceCounts (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDiscoveredResourceCounts"


-- | <p>Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval.</p> <p>The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p> <note> <p>Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified <code>limit</code>. In such cases, you can make another call, using the <code>nextToken</code>.</p> </note>
getResourceConfigHistory :: forall eff. ConfigService.Service -> ConfigServiceTypes.GetResourceConfigHistoryRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.GetResourceConfigHistoryResponse
getResourceConfigHistory (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getResourceConfigHistory"


-- | <p>Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.</p> <note> <p>You can specify either resource IDs or a resource name but not both in the same request.</p> </note> <p>The response is paginated. By default, AWS Config lists 100 resource identifiers on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p>
listDiscoveredResources :: forall eff. ConfigService.Service -> ConfigServiceTypes.ListDiscoveredResourcesRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.ListDiscoveredResourcesResponse
listDiscoveredResources (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDiscoveredResources"


-- | <p>Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.</p> <p>You can use this action for custom Config rules and AWS managed Config rules. A custom Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.</p> <p>If you are adding a new custom Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the <code>PutConfigRule</code> action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the <code>SourceIdentifier</code> key. This key is part of the <code>Source</code> object, which is part of the <code>ConfigRule</code> object. </p> <p>If you are adding an AWS managed Config rule, specify the rule's identifier for the <code>SourceIdentifier</code> key. To reference AWS managed Config rule identifiers, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">About AWS Managed Config Rules</a>.</p> <p>For any new rule that you add, specify the <code>ConfigRuleName</code> in the <code>ConfigRule</code> object. Do not specify the <code>ConfigRuleArn</code> or the <code>ConfigRuleId</code>. These values are generated by AWS Config for new rules.</p> <p>If you are updating a rule that you added previously, you can specify the rule by <code>ConfigRuleName</code>, <code>ConfigRuleId</code>, or <code>ConfigRuleArn</code> in the <code>ConfigRule</code> data type that you use in this request.</p> <p>The maximum number of rules that AWS Config supports is 50.</p> <p>For more information about requesting a rule limit increase, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>
putConfigRule :: forall eff. ConfigService.Service -> ConfigServiceTypes.PutConfigRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
putConfigRule (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putConfigRule"


-- | <p>Creates a new configuration recorder to record the selected resource configurations.</p> <p>You can use this action to change the role <code>roleARN</code> and/or the <code>recordingGroup</code> of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> <p>If <code>ConfigurationRecorder</code> does not have the <b>recordingGroup</b> parameter specified, the default is to record all supported resource types.</p> </note>
putConfigurationRecorder :: forall eff. ConfigService.Service -> ConfigServiceTypes.PutConfigurationRecorderRequest -> Aff (exception :: EXCEPTION | eff) Unit
putConfigurationRecorder (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putConfigurationRecorder"


-- | <p>Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.</p> <p>Before you can create a delivery channel, you must create a configuration recorder.</p> <p>You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.</p> <note> <p>You can have only one delivery channel per region in your account.</p> </note>
putDeliveryChannel :: forall eff. ConfigService.Service -> ConfigServiceTypes.PutDeliveryChannelRequest -> Aff (exception :: EXCEPTION | eff) Unit
putDeliveryChannel (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putDeliveryChannel"


-- | <p>Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.</p>
putEvaluations :: forall eff. ConfigService.Service -> ConfigServiceTypes.PutEvaluationsRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.PutEvaluationsResponse
putEvaluations (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putEvaluations"


-- | <p>Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use <code>StartConfigRulesEvaluation</code> when you want to test a rule that you updated is working as expected. <code>StartConfigRulesEvaluation</code> does not re-record the latest configuration state for your resources; it re-runs an evaluation against the last known state of your resources. </p> <p>You can specify up to 25 Config rules per request. </p> <p>An existing <code>StartConfigRulesEvaluation</code> call must complete for the specified rules before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a <code>ConfigRuleEvaluationStarted</code> notification when the evaluation starts.</p> <note> <p>You don't need to call the <code>StartConfigRulesEvaluation</code> API to run an evaluation for a new rule. When you create a new rule, AWS Config automatically evaluates your resources against the rule. </p> </note> <p>The <code>StartConfigRulesEvaluation</code> API is useful if you want to run on-demand evaluations, such as the following example:</p> <ol> <li> <p>You have a custom rule that evaluates your IAM resources every 24 hours.</p> </li> <li> <p>You update your Lambda function to add additional conditions to your rule.</p> </li> <li> <p>Instead of waiting for the next periodic evaluation, you call the <code>StartConfigRulesEvaluation</code> API.</p> </li> <li> <p>AWS Config invokes your Lambda function and evaluates your IAM resources.</p> </li> <li> <p>Your custom rule will still run periodic evaluations every 24 hours.</p> </li> </ol>
startConfigRulesEvaluation :: forall eff. ConfigService.Service -> ConfigServiceTypes.StartConfigRulesEvaluationRequest -> Aff (exception :: EXCEPTION | eff) ConfigServiceTypes.StartConfigRulesEvaluationResponse
startConfigRulesEvaluation (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startConfigRulesEvaluation"


-- | <p>Starts recording configurations of the AWS resources you have selected to record in your AWS account.</p> <p>You must have created at least one delivery channel to successfully start the configuration recorder.</p>
startConfigurationRecorder :: forall eff. ConfigService.Service -> ConfigServiceTypes.StartConfigurationRecorderRequest -> Aff (exception :: EXCEPTION | eff) Unit
startConfigurationRecorder (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startConfigurationRecorder"


-- | <p>Stops recording configurations of the AWS resources you have selected to record in your AWS account.</p>
stopConfigurationRecorder :: forall eff. ConfigService.Service -> ConfigServiceTypes.StopConfigurationRecorderRequest -> Aff (exception :: EXCEPTION | eff) Unit
stopConfigurationRecorder (ConfigService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopConfigurationRecorder"
