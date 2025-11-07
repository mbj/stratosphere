module Stratosphere.Logs.Transformer.ListToMapProperty (
        ListToMapProperty(..), mkListToMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListToMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html>
    ListToMapProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html#cfn-logs-transformer-listtomap-flatten>
                       flatten :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html#cfn-logs-transformer-listtomap-flattenedelement>
                       flattenedElement :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html#cfn-logs-transformer-listtomap-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html#cfn-logs-transformer-listtomap-source>
                       source :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html#cfn-logs-transformer-listtomap-target>
                       target :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-listtomap.html#cfn-logs-transformer-listtomap-valuekey>
                       valueKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListToMapProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ListToMapProperty
mkListToMapProperty key source
  = ListToMapProperty
      {haddock_workaround_ = (), key = key, source = source,
       flatten = Prelude.Nothing, flattenedElement = Prelude.Nothing,
       target = Prelude.Nothing, valueKey = Prelude.Nothing}
instance ToResourceProperties ListToMapProperty where
  toResourceProperties ListToMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ListToMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Flatten" Prelude.<$> flatten,
                               (JSON..=) "FlattenedElement" Prelude.<$> flattenedElement,
                               (JSON..=) "Target" Prelude.<$> target,
                               (JSON..=) "ValueKey" Prelude.<$> valueKey]))}
instance JSON.ToJSON ListToMapProperty where
  toJSON ListToMapProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Flatten" Prelude.<$> flatten,
                  (JSON..=) "FlattenedElement" Prelude.<$> flattenedElement,
                  (JSON..=) "Target" Prelude.<$> target,
                  (JSON..=) "ValueKey" Prelude.<$> valueKey])))
instance Property "Flatten" ListToMapProperty where
  type PropertyType "Flatten" ListToMapProperty = Value Prelude.Bool
  set newValue ListToMapProperty {..}
    = ListToMapProperty {flatten = Prelude.pure newValue, ..}
instance Property "FlattenedElement" ListToMapProperty where
  type PropertyType "FlattenedElement" ListToMapProperty = Value Prelude.Text
  set newValue ListToMapProperty {..}
    = ListToMapProperty {flattenedElement = Prelude.pure newValue, ..}
instance Property "Key" ListToMapProperty where
  type PropertyType "Key" ListToMapProperty = Value Prelude.Text
  set newValue ListToMapProperty {..}
    = ListToMapProperty {key = newValue, ..}
instance Property "Source" ListToMapProperty where
  type PropertyType "Source" ListToMapProperty = Value Prelude.Text
  set newValue ListToMapProperty {..}
    = ListToMapProperty {source = newValue, ..}
instance Property "Target" ListToMapProperty where
  type PropertyType "Target" ListToMapProperty = Value Prelude.Text
  set newValue ListToMapProperty {..}
    = ListToMapProperty {target = Prelude.pure newValue, ..}
instance Property "ValueKey" ListToMapProperty where
  type PropertyType "ValueKey" ListToMapProperty = Value Prelude.Text
  set newValue ListToMapProperty {..}
    = ListToMapProperty {valueKey = Prelude.pure newValue, ..}