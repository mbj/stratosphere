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
  = Association {applyOnlyAtCronInterval :: (Prelude.Maybe (Value Prelude.Bool)),
                 associationName :: (Prelude.Maybe (Value Prelude.Text)),
                 automationTargetParameterName :: (Prelude.Maybe (Value Prelude.Text)),
                 calendarNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                 complianceSeverity :: (Prelude.Maybe (Value Prelude.Text)),
                 documentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 instanceId :: (Prelude.Maybe (Value Prelude.Text)),
                 maxConcurrency :: (Prelude.Maybe (Value Prelude.Text)),
                 maxErrors :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Value Prelude.Text),
                 outputLocation :: (Prelude.Maybe InstanceAssociationOutputLocationProperty),
                 parameters :: (Prelude.Maybe JSON.Object),
                 scheduleExpression :: (Prelude.Maybe (Value Prelude.Text)),
                 scheduleOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                 syncCompliance :: (Prelude.Maybe (Value Prelude.Text)),
                 targets :: (Prelude.Maybe [TargetProperty]),
                 waitForSuccessTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkAssociation :: Value Prelude.Text -> Association
mkAssociation name
  = Association
      {name = name, applyOnlyAtCronInterval = Prelude.Nothing,
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