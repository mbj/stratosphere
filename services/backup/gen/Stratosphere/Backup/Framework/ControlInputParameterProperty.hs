module Stratosphere.Backup.Framework.ControlInputParameterProperty (
        ControlInputParameterProperty(..), mkControlInputParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ControlInputParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlinputparameter.html>
    ControlInputParameterProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlinputparameter.html#cfn-backup-framework-controlinputparameter-parametername>
                                   parameterName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlinputparameter.html#cfn-backup-framework-controlinputparameter-parametervalue>
                                   parameterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlInputParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ControlInputParameterProperty
mkControlInputParameterProperty parameterName parameterValue
  = ControlInputParameterProperty
      {haddock_workaround_ = (), parameterName = parameterName,
       parameterValue = parameterValue}
instance ToResourceProperties ControlInputParameterProperty where
  toResourceProperties ControlInputParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::Framework.ControlInputParameter",
         supportsTags = Prelude.False,
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ControlInputParameterProperty where
  toJSON ControlInputParameterProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" ControlInputParameterProperty where
  type PropertyType "ParameterName" ControlInputParameterProperty = Value Prelude.Text
  set newValue ControlInputParameterProperty {..}
    = ControlInputParameterProperty {parameterName = newValue, ..}
instance Property "ParameterValue" ControlInputParameterProperty where
  type PropertyType "ParameterValue" ControlInputParameterProperty = Value Prelude.Text
  set newValue ControlInputParameterProperty {..}
    = ControlInputParameterProperty {parameterValue = newValue, ..}