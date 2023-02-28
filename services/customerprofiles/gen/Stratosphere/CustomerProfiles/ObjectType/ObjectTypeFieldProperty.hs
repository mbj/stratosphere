module Stratosphere.CustomerProfiles.ObjectType.ObjectTypeFieldProperty (
        ObjectTypeFieldProperty(..), mkObjectTypeFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectTypeFieldProperty
  = ObjectTypeFieldProperty {contentType :: (Prelude.Maybe (Value Prelude.Text)),
                             source :: (Prelude.Maybe (Value Prelude.Text)),
                             target :: (Prelude.Maybe (Value Prelude.Text))}
mkObjectTypeFieldProperty :: ObjectTypeFieldProperty
mkObjectTypeFieldProperty
  = ObjectTypeFieldProperty
      {contentType = Prelude.Nothing, source = Prelude.Nothing,
       target = Prelude.Nothing}
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