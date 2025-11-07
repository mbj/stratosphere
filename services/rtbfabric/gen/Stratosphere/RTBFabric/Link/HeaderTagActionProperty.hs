module Stratosphere.RTBFabric.Link.HeaderTagActionProperty (
        HeaderTagActionProperty(..), mkHeaderTagActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderTagActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-headertagaction.html>
    HeaderTagActionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-headertagaction.html#cfn-rtbfabric-link-headertagaction-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-headertagaction.html#cfn-rtbfabric-link-headertagaction-value>
                             value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderTagActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> HeaderTagActionProperty
mkHeaderTagActionProperty name value
  = HeaderTagActionProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties HeaderTagActionProperty where
  toResourceProperties HeaderTagActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.HeaderTagAction",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON HeaderTagActionProperty where
  toJSON HeaderTagActionProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" HeaderTagActionProperty where
  type PropertyType "Name" HeaderTagActionProperty = Value Prelude.Text
  set newValue HeaderTagActionProperty {..}
    = HeaderTagActionProperty {name = newValue, ..}
instance Property "Value" HeaderTagActionProperty where
  type PropertyType "Value" HeaderTagActionProperty = Value Prelude.Text
  set newValue HeaderTagActionProperty {..}
    = HeaderTagActionProperty {value = newValue, ..}