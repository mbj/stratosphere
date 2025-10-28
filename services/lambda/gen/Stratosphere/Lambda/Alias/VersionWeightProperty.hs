module Stratosphere.Lambda.Alias.VersionWeightProperty (
        VersionWeightProperty(..), mkVersionWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VersionWeightProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html>
    VersionWeightProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionversion>
                           functionVersion :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionweight>
                           functionWeight :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVersionWeightProperty ::
  Value Prelude.Text -> Value Prelude.Double -> VersionWeightProperty
mkVersionWeightProperty functionVersion functionWeight
  = VersionWeightProperty
      {haddock_workaround_ = (), functionVersion = functionVersion,
       functionWeight = functionWeight}
instance ToResourceProperties VersionWeightProperty where
  toResourceProperties VersionWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias.VersionWeight",
         supportsTags = Prelude.False,
         properties = ["FunctionVersion" JSON..= functionVersion,
                       "FunctionWeight" JSON..= functionWeight]}
instance JSON.ToJSON VersionWeightProperty where
  toJSON VersionWeightProperty {..}
    = JSON.object
        ["FunctionVersion" JSON..= functionVersion,
         "FunctionWeight" JSON..= functionWeight]
instance Property "FunctionVersion" VersionWeightProperty where
  type PropertyType "FunctionVersion" VersionWeightProperty = Value Prelude.Text
  set newValue VersionWeightProperty {..}
    = VersionWeightProperty {functionVersion = newValue, ..}
instance Property "FunctionWeight" VersionWeightProperty where
  type PropertyType "FunctionWeight" VersionWeightProperty = Value Prelude.Double
  set newValue VersionWeightProperty {..}
    = VersionWeightProperty {functionWeight = newValue, ..}