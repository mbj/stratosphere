module Stratosphere.ResourceGroups.Group.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html>
    TagFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-key>
                       key :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-values>
                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagFilterProperty :: TagFilterProperty
mkTagFilterProperty
  = TagFilterProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.TagFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" TagFilterProperty where
  type PropertyType "Key" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Values" TagFilterProperty where
  type PropertyType "Values" TagFilterProperty = ValueList Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {values = Prelude.pure newValue, ..}