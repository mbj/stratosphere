module Stratosphere.CustomerProfiles.ObjectType.ObjectTypeKeyProperty (
        ObjectTypeKeyProperty(..), mkObjectTypeKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectTypeKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypekey.html>
    ObjectTypeKeyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypekey.html#cfn-customerprofiles-objecttype-objecttypekey-fieldnames>
                           fieldNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypekey.html#cfn-customerprofiles-objecttype-objecttypekey-standardidentifiers>
                           standardIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObjectTypeKeyProperty :: ObjectTypeKeyProperty
mkObjectTypeKeyProperty
  = ObjectTypeKeyProperty
      {haddock_workaround_ = (), fieldNames = Prelude.Nothing,
       standardIdentifiers = Prelude.Nothing}
instance ToResourceProperties ObjectTypeKeyProperty where
  toResourceProperties ObjectTypeKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType.ObjectTypeKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldNames" Prelude.<$> fieldNames,
                            (JSON..=) "StandardIdentifiers" Prelude.<$> standardIdentifiers])}
instance JSON.ToJSON ObjectTypeKeyProperty where
  toJSON ObjectTypeKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldNames" Prelude.<$> fieldNames,
               (JSON..=) "StandardIdentifiers" Prelude.<$> standardIdentifiers]))
instance Property "FieldNames" ObjectTypeKeyProperty where
  type PropertyType "FieldNames" ObjectTypeKeyProperty = ValueList Prelude.Text
  set newValue ObjectTypeKeyProperty {..}
    = ObjectTypeKeyProperty {fieldNames = Prelude.pure newValue, ..}
instance Property "StandardIdentifiers" ObjectTypeKeyProperty where
  type PropertyType "StandardIdentifiers" ObjectTypeKeyProperty = ValueList Prelude.Text
  set newValue ObjectTypeKeyProperty {..}
    = ObjectTypeKeyProperty
        {standardIdentifiers = Prelude.pure newValue, ..}