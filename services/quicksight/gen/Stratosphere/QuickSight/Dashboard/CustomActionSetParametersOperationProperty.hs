module Stratosphere.QuickSight.Dashboard.CustomActionSetParametersOperationProperty (
        module Exports, CustomActionSetParametersOperationProperty(..),
        mkCustomActionSetParametersOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SetParameterValueConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CustomActionSetParametersOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customactionsetparametersoperation.html>
    CustomActionSetParametersOperationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customactionsetparametersoperation.html#cfn-quicksight-dashboard-customactionsetparametersoperation-parametervalueconfigurations>
                                                parameterValueConfigurations :: [SetParameterValueConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionSetParametersOperationProperty ::
  [SetParameterValueConfigurationProperty]
  -> CustomActionSetParametersOperationProperty
mkCustomActionSetParametersOperationProperty
  parameterValueConfigurations
  = CustomActionSetParametersOperationProperty
      {haddock_workaround_ = (),
       parameterValueConfigurations = parameterValueConfigurations}
instance ToResourceProperties CustomActionSetParametersOperationProperty where
  toResourceProperties
    CustomActionSetParametersOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CustomActionSetParametersOperation",
         supportsTags = Prelude.False,
         properties = ["ParameterValueConfigurations"
                         JSON..= parameterValueConfigurations]}
instance JSON.ToJSON CustomActionSetParametersOperationProperty where
  toJSON CustomActionSetParametersOperationProperty {..}
    = JSON.object
        ["ParameterValueConfigurations"
           JSON..= parameterValueConfigurations]
instance Property "ParameterValueConfigurations" CustomActionSetParametersOperationProperty where
  type PropertyType "ParameterValueConfigurations" CustomActionSetParametersOperationProperty = [SetParameterValueConfigurationProperty]
  set newValue CustomActionSetParametersOperationProperty {..}
    = CustomActionSetParametersOperationProperty
        {parameterValueConfigurations = newValue, ..}