module Stratosphere.SageMaker.ModelPackage.ModelInputProperty (
        ModelInputProperty(..), mkModelInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelInputProperty
  = ModelInputProperty {dataInputConfig :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelInputProperty :: Value Prelude.Text -> ModelInputProperty
mkModelInputProperty dataInputConfig
  = ModelInputProperty {dataInputConfig = dataInputConfig}
instance ToResourceProperties ModelInputProperty where
  toResourceProperties ModelInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelInput",
         supportsTags = Prelude.False,
         properties = ["DataInputConfig" JSON..= dataInputConfig]}
instance JSON.ToJSON ModelInputProperty where
  toJSON ModelInputProperty {..}
    = JSON.object ["DataInputConfig" JSON..= dataInputConfig]
instance Property "DataInputConfig" ModelInputProperty where
  type PropertyType "DataInputConfig" ModelInputProperty = Value Prelude.Text
  set newValue ModelInputProperty {}
    = ModelInputProperty {dataInputConfig = newValue, ..}