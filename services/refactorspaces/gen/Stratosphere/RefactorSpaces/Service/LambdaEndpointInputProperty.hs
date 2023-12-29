module Stratosphere.RefactorSpaces.Service.LambdaEndpointInputProperty (
        LambdaEndpointInputProperty(..), mkLambdaEndpointInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaEndpointInputProperty
  = LambdaEndpointInputProperty {arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaEndpointInputProperty ::
  Value Prelude.Text -> LambdaEndpointInputProperty
mkLambdaEndpointInputProperty arn
  = LambdaEndpointInputProperty {arn = arn}
instance ToResourceProperties LambdaEndpointInputProperty where
  toResourceProperties LambdaEndpointInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Service.LambdaEndpointInput",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON LambdaEndpointInputProperty where
  toJSON LambdaEndpointInputProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" LambdaEndpointInputProperty where
  type PropertyType "Arn" LambdaEndpointInputProperty = Value Prelude.Text
  set newValue LambdaEndpointInputProperty {}
    = LambdaEndpointInputProperty {arn = newValue, ..}