module Stratosphere.Lightsail.Bucket.AccessRulesProperty (
        AccessRulesProperty(..), mkAccessRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessRulesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-bucket-accessrules.html>
    AccessRulesProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-bucket-accessrules.html#cfn-lightsail-bucket-accessrules-allowpublicoverrides>
                         allowPublicOverrides :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-bucket-accessrules.html#cfn-lightsail-bucket-accessrules-getobject>
                         getObject :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessRulesProperty :: AccessRulesProperty
mkAccessRulesProperty
  = AccessRulesProperty
      {haddock_workaround_ = (), allowPublicOverrides = Prelude.Nothing,
       getObject = Prelude.Nothing}
instance ToResourceProperties AccessRulesProperty where
  toResourceProperties AccessRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Bucket.AccessRules",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowPublicOverrides" Prelude.<$> allowPublicOverrides,
                            (JSON..=) "GetObject" Prelude.<$> getObject])}
instance JSON.ToJSON AccessRulesProperty where
  toJSON AccessRulesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowPublicOverrides" Prelude.<$> allowPublicOverrides,
               (JSON..=) "GetObject" Prelude.<$> getObject]))
instance Property "AllowPublicOverrides" AccessRulesProperty where
  type PropertyType "AllowPublicOverrides" AccessRulesProperty = Value Prelude.Bool
  set newValue AccessRulesProperty {..}
    = AccessRulesProperty
        {allowPublicOverrides = Prelude.pure newValue, ..}
instance Property "GetObject" AccessRulesProperty where
  type PropertyType "GetObject" AccessRulesProperty = Value Prelude.Text
  set newValue AccessRulesProperty {..}
    = AccessRulesProperty {getObject = Prelude.pure newValue, ..}