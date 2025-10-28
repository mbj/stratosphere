module Stratosphere.Glue.Registry (
        Registry(..), mkRegistry
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Registry
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-registry.html>
    Registry {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-registry.html#cfn-glue-registry-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-registry.html#cfn-glue-registry-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-registry.html#cfn-glue-registry-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegistry :: Value Prelude.Text -> Registry
mkRegistry name
  = Registry
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Registry where
  toResourceProperties Registry {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Registry", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Registry where
  toJSON Registry {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Registry where
  type PropertyType "Description" Registry = Value Prelude.Text
  set newValue Registry {..}
    = Registry {description = Prelude.pure newValue, ..}
instance Property "Name" Registry where
  type PropertyType "Name" Registry = Value Prelude.Text
  set newValue Registry {..} = Registry {name = newValue, ..}
instance Property "Tags" Registry where
  type PropertyType "Tags" Registry = [Tag]
  set newValue Registry {..}
    = Registry {tags = Prelude.pure newValue, ..}