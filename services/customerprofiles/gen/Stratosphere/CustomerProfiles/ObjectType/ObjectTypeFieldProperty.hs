module Stratosphere.CustomerProfiles.ObjectType.ObjectTypeFieldProperty (
        ObjectTypeFieldProperty(..), mkObjectTypeFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectTypeFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypefield.html>
    ObjectTypeFieldProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypefield.html#cfn-customerprofiles-objecttype-objecttypefield-contenttype>
                             contentType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypefield.html#cfn-customerprofiles-objecttype-objecttypefield-source>
                             source :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypefield.html#cfn-customerprofiles-objecttype-objecttypefield-target>
                             target :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObjectTypeFieldProperty :: ObjectTypeFieldProperty
mkObjectTypeFieldProperty
  = ObjectTypeFieldProperty
      {haddock_workaround_ = (), contentType = Prelude.Nothing,
       source = Prelude.Nothing, target = Prelude.Nothing}
instance ToResourceProperties ObjectTypeFieldProperty where
  toResourceProperties ObjectTypeFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType.ObjectTypeField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentType" Prelude.<$> contentType,
                            (JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "Target" Prelude.<$> target])}
instance JSON.ToJSON ObjectTypeFieldProperty where
  toJSON ObjectTypeFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentType" Prelude.<$> contentType,
               (JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "Target" Prelude.<$> target]))
instance Property "ContentType" ObjectTypeFieldProperty where
  type PropertyType "ContentType" ObjectTypeFieldProperty = Value Prelude.Text
  set newValue ObjectTypeFieldProperty {..}
    = ObjectTypeFieldProperty {contentType = Prelude.pure newValue, ..}
instance Property "Source" ObjectTypeFieldProperty where
  type PropertyType "Source" ObjectTypeFieldProperty = Value Prelude.Text
  set newValue ObjectTypeFieldProperty {..}
    = ObjectTypeFieldProperty {source = Prelude.pure newValue, ..}
instance Property "Target" ObjectTypeFieldProperty where
  type PropertyType "Target" ObjectTypeFieldProperty = Value Prelude.Text
  set newValue ObjectTypeFieldProperty {..}
    = ObjectTypeFieldProperty {target = Prelude.pure newValue, ..}