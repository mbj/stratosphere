module Stratosphere.AppFlow.Flow.DataTransferApiProperty (
        DataTransferApiProperty(..), mkDataTransferApiProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataTransferApiProperty
  = DataTransferApiProperty {name :: (Value Prelude.Text),
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataTransferApiProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DataTransferApiProperty
mkDataTransferApiProperty name type'
  = DataTransferApiProperty {name = name, type' = type'}
instance ToResourceProperties DataTransferApiProperty where
  toResourceProperties DataTransferApiProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.DataTransferApi",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON DataTransferApiProperty where
  toJSON DataTransferApiProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" DataTransferApiProperty where
  type PropertyType "Name" DataTransferApiProperty = Value Prelude.Text
  set newValue DataTransferApiProperty {..}
    = DataTransferApiProperty {name = newValue, ..}
instance Property "Type" DataTransferApiProperty where
  type PropertyType "Type" DataTransferApiProperty = Value Prelude.Text
  set newValue DataTransferApiProperty {..}
    = DataTransferApiProperty {type' = newValue, ..}