module Stratosphere.AppFlow.Flow.SAPODataParallelismConfigProperty (
        SAPODataParallelismConfigProperty(..),
        mkSAPODataParallelismConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataParallelismConfigProperty
  = SAPODataParallelismConfigProperty {maxParallelism :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAPODataParallelismConfigProperty ::
  Value Prelude.Integer -> SAPODataParallelismConfigProperty
mkSAPODataParallelismConfigProperty maxParallelism
  = SAPODataParallelismConfigProperty
      {maxParallelism = maxParallelism}
instance ToResourceProperties SAPODataParallelismConfigProperty where
  toResourceProperties SAPODataParallelismConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SAPODataParallelismConfig",
         supportsTags = Prelude.False,
         properties = ["maxParallelism" JSON..= maxParallelism]}
instance JSON.ToJSON SAPODataParallelismConfigProperty where
  toJSON SAPODataParallelismConfigProperty {..}
    = JSON.object ["maxParallelism" JSON..= maxParallelism]
instance Property "maxParallelism" SAPODataParallelismConfigProperty where
  type PropertyType "maxParallelism" SAPODataParallelismConfigProperty = Value Prelude.Integer
  set newValue SAPODataParallelismConfigProperty {}
    = SAPODataParallelismConfigProperty {maxParallelism = newValue, ..}