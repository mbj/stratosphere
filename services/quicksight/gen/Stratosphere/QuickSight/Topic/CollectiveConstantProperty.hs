module Stratosphere.QuickSight.Topic.CollectiveConstantProperty (
        CollectiveConstantProperty(..), mkCollectiveConstantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CollectiveConstantProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-collectiveconstant.html>
    CollectiveConstantProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-collectiveconstant.html#cfn-quicksight-topic-collectiveconstant-valuelist>
                                valueList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCollectiveConstantProperty :: CollectiveConstantProperty
mkCollectiveConstantProperty
  = CollectiveConstantProperty
      {haddock_workaround_ = (), valueList = Prelude.Nothing}
instance ToResourceProperties CollectiveConstantProperty where
  toResourceProperties CollectiveConstantProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.CollectiveConstant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "ValueList" Prelude.<$> valueList])}
instance JSON.ToJSON CollectiveConstantProperty where
  toJSON CollectiveConstantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "ValueList" Prelude.<$> valueList]))
instance Property "ValueList" CollectiveConstantProperty where
  type PropertyType "ValueList" CollectiveConstantProperty = ValueList Prelude.Text
  set newValue CollectiveConstantProperty {..}
    = CollectiveConstantProperty
        {valueList = Prelude.pure newValue, ..}