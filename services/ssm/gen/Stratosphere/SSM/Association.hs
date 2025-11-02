module Stratosphere.SSM.Association (
        module Exports, Association(..), mkAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.Association.InstanceAssociationOutputLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.Association.TargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Association
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html>
    Association {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-applyonlyatcroninterval>
                 applyOnlyAtCronInterval :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-associationname>
                 associationName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-automationtargetparametername>
                 automationTargetParameterName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-calendarnames>
                 calendarNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-complianceseverity>
                 complianceSeverity :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-documentversion>
                 documentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-instanceid>
                 instanceId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-maxconcurrency>
                 maxConcurrency :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-maxerrors>
                 maxErrors :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-outputlocation>
                 outputLocation :: (Prelude.Maybe InstanceAssociationOutputLocationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-parameters>
                 parameters :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-scheduleexpression>
                 scheduleExpression :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-scheduleoffset>
                 scheduleOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-synccompliance>
                 syncCompliance :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-targets>
                 targets :: (Prelude.Maybe [TargetProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-waitforsuccesstimeoutseconds>
                 waitForSuccessTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociation :: Value Prelude.Text -> Association
mkAssociation name
  = Association
      {haddock_workaround_ = (), name = name,
       applyOnlyAtCronInterval = Prelude.Nothing,
       associationName = Prelude.Nothing,
       automationTargetParameterName = Prelude.Nothing,
       calendarNames = Prelude.Nothing,
       complianceSeverity = Prelude.Nothing,
       documentVersion = Prelude.Nothing, instanceId = Prelude.Nothing,
       maxConcurrency = Prelude.Nothing, maxErrors = Prelude.Nothing,
       outputLocation = Prelude.Nothing, parameters = Prelude.Nothing,
       scheduleExpression = Prelude.Nothing,
       scheduleOffset = Prelude.Nothing, syncCompliance = Prelude.Nothing,
       targets = Prelude.Nothing,
       waitForSuccessTimeoutSeconds = Prelude.Nothing}
instance ToResourceProperties Association where
  toResourceProperties Association {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Association", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplyOnlyAtCronInterval"
                                 Prelude.<$> applyOnlyAtCronInterval,
                               (JSON..=) "AssociationName" Prelude.<$> associationName,
                               (JSON..=) "AutomationTargetParameterName"
                                 Prelude.<$> automationTargetParameterName,
                               (JSON..=) "CalendarNames" Prelude.<$> calendarNames,
                               (JSON..=) "ComplianceSeverity" Prelude.<$> complianceSeverity,
                               (JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
                               (JSON..=) "InstanceId" Prelude.<$> instanceId,
                               (JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency,
                               (JSON..=) "MaxErrors" Prelude.<$> maxErrors,
                               (JSON..=) "OutputLocation" Prelude.<$> outputLocation,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
                               (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                               (JSON..=) "SyncCompliance" Prelude.<$> syncCompliance,
                               (JSON..=) "Targets" Prelude.<$> targets,
                               (JSON..=) "WaitForSuccessTimeoutSeconds"
                                 Prelude.<$> waitForSuccessTimeoutSeconds]))}
instance JSON.ToJSON Association where
  toJSON Association {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ApplyOnlyAtCronInterval"
                    Prelude.<$> applyOnlyAtCronInterval,
                  (JSON..=) "AssociationName" Prelude.<$> associationName,
                  (JSON..=) "AutomationTargetParameterName"
                    Prelude.<$> automationTargetParameterName,
                  (JSON..=) "CalendarNames" Prelude.<$> calendarNames,
                  (JSON..=) "ComplianceSeverity" Prelude.<$> complianceSeverity,
                  (JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
                  (JSON..=) "InstanceId" Prelude.<$> instanceId,
                  (JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency,
                  (JSON..=) "MaxErrors" Prelude.<$> maxErrors,
                  (JSON..=) "OutputLocation" Prelude.<$> outputLocation,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
                  (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                  (JSON..=) "SyncCompliance" Prelude.<$> syncCompliance,
                  (JSON..=) "Targets" Prelude.<$> targets,
                  (JSON..=) "WaitForSuccessTimeoutSeconds"
                    Prelude.<$> waitForSuccessTimeoutSeconds])))
instance Property "ApplyOnlyAtCronInterval" Association where
  type PropertyType "ApplyOnlyAtCronInterval" Association = Value Prelude.Bool
  set newValue Association {..}
    = Association {applyOnlyAtCronInterval = Prelude.pure newValue, ..}
instance Property "AssociationName" Association where
  type PropertyType "AssociationName" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {associationName = Prelude.pure newValue, ..}
instance Property "AutomationTargetParameterName" Association where
  type PropertyType "AutomationTargetParameterName" Association = Value Prelude.Text
  set newValue Association {..}
    = Association
        {automationTargetParameterName = Prelude.pure newValue, ..}
instance Property "CalendarNames" Association where
  type PropertyType "CalendarNames" Association = ValueList Prelude.Text
  set newValue Association {..}
    = Association {calendarNames = Prelude.pure newValue, ..}
instance Property "ComplianceSeverity" Association where
  type PropertyType "ComplianceSeverity" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {complianceSeverity = Prelude.pure newValue, ..}
instance Property "DocumentVersion" Association where
  type PropertyType "DocumentVersion" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {documentVersion = Prelude.pure newValue, ..}
instance Property "InstanceId" Association where
  type PropertyType "InstanceId" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {instanceId = Prelude.pure newValue, ..}
instance Property "MaxConcurrency" Association where
  type PropertyType "MaxConcurrency" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {maxConcurrency = Prelude.pure newValue, ..}
instance Property "MaxErrors" Association where
  type PropertyType "MaxErrors" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {maxErrors = Prelude.pure newValue, ..}
instance Property "Name" Association where
  type PropertyType "Name" Association = Value Prelude.Text
  set newValue Association {..} = Association {name = newValue, ..}
instance Property "OutputLocation" Association where
  type PropertyType "OutputLocation" Association = InstanceAssociationOutputLocationProperty
  set newValue Association {..}
    = Association {outputLocation = Prelude.pure newValue, ..}
instance Property "Parameters" Association where
  type PropertyType "Parameters" Association = JSON.Object
  set newValue Association {..}
    = Association {parameters = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" Association where
  type PropertyType "ScheduleExpression" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {scheduleExpression = Prelude.pure newValue, ..}
instance Property "ScheduleOffset" Association where
  type PropertyType "ScheduleOffset" Association = Value Prelude.Integer
  set newValue Association {..}
    = Association {scheduleOffset = Prelude.pure newValue, ..}
instance Property "SyncCompliance" Association where
  type PropertyType "SyncCompliance" Association = Value Prelude.Text
  set newValue Association {..}
    = Association {syncCompliance = Prelude.pure newValue, ..}
instance Property "Targets" Association where
  type PropertyType "Targets" Association = [TargetProperty]
  set newValue Association {..}
    = Association {targets = Prelude.pure newValue, ..}
instance Property "WaitForSuccessTimeoutSeconds" Association where
  type PropertyType "WaitForSuccessTimeoutSeconds" Association = Value Prelude.Integer
  set newValue Association {..}
    = Association
        {waitForSuccessTimeoutSeconds = Prelude.pure newValue, ..}