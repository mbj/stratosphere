module Stratosphere.ARCRegionSwitch.Plan.ExecutionApprovalConfigurationProperty (
        ExecutionApprovalConfigurationProperty(..),
        mkExecutionApprovalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutionApprovalConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionapprovalconfiguration.html>
    ExecutionApprovalConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionapprovalconfiguration.html#cfn-arcregionswitch-plan-executionapprovalconfiguration-approvalrole>
                                            approvalRole :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionapprovalconfiguration.html#cfn-arcregionswitch-plan-executionapprovalconfiguration-timeoutminutes>
                                            timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionApprovalConfigurationProperty ::
  Value Prelude.Text -> ExecutionApprovalConfigurationProperty
mkExecutionApprovalConfigurationProperty approvalRole
  = ExecutionApprovalConfigurationProperty
      {haddock_workaround_ = (), approvalRole = approvalRole,
       timeoutMinutes = Prelude.Nothing}
instance ToResourceProperties ExecutionApprovalConfigurationProperty where
  toResourceProperties ExecutionApprovalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.ExecutionApprovalConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApprovalRole" JSON..= approvalRole]
                           (Prelude.catMaybes
                              [(JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes]))}
instance JSON.ToJSON ExecutionApprovalConfigurationProperty where
  toJSON ExecutionApprovalConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApprovalRole" JSON..= approvalRole]
              (Prelude.catMaybes
                 [(JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes])))
instance Property "ApprovalRole" ExecutionApprovalConfigurationProperty where
  type PropertyType "ApprovalRole" ExecutionApprovalConfigurationProperty = Value Prelude.Text
  set newValue ExecutionApprovalConfigurationProperty {..}
    = ExecutionApprovalConfigurationProperty
        {approvalRole = newValue, ..}
instance Property "TimeoutMinutes" ExecutionApprovalConfigurationProperty where
  type PropertyType "TimeoutMinutes" ExecutionApprovalConfigurationProperty = Value Prelude.Double
  set newValue ExecutionApprovalConfigurationProperty {..}
    = ExecutionApprovalConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}