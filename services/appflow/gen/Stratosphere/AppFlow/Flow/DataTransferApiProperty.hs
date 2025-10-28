module Stratosphere.AppFlow.Flow.DataTransferApiProperty (
        DataTransferApiProperty(..), mkDataTransferApiProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataTransferApiProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datatransferapi.html>
    DataTransferApiProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datatransferapi.html#cfn-appflow-flow-datatransferapi-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datatransferapi.html#cfn-appflow-flow-datatransferapi-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataTransferApiProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DataTransferApiProperty
mkDataTransferApiProperty name type'
  = DataTransferApiProperty
      {haddock_workaround_ = (), name = name, type' = type'}
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