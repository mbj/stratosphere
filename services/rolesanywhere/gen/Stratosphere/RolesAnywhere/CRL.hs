module Stratosphere.RolesAnywhere.CRL (
        CRL(..), mkCRL
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CRL
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-crl.html>
    CRL {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-crl.html#cfn-rolesanywhere-crl-crldata>
         crlData :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-crl.html#cfn-rolesanywhere-crl-enabled>
         enabled :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-crl.html#cfn-rolesanywhere-crl-name>
         name :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-crl.html#cfn-rolesanywhere-crl-tags>
         tags :: (Prelude.Maybe [Tag]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-crl.html#cfn-rolesanywhere-crl-trustanchorarn>
         trustAnchorArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCRL :: Value Prelude.Text -> Value Prelude.Text -> CRL
mkCRL crlData name
  = CRL
      {haddock_workaround_ = (), crlData = crlData, name = name,
       enabled = Prelude.Nothing, tags = Prelude.Nothing,
       trustAnchorArn = Prelude.Nothing}
instance ToResourceProperties CRL where
  toResourceProperties CRL {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::CRL", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CrlData" JSON..= crlData, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrustAnchorArn" Prelude.<$> trustAnchorArn]))}
instance JSON.ToJSON CRL where
  toJSON CRL {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CrlData" JSON..= crlData, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrustAnchorArn" Prelude.<$> trustAnchorArn])))
instance Property "CrlData" CRL where
  type PropertyType "CrlData" CRL = Value Prelude.Text
  set newValue CRL {..} = CRL {crlData = newValue, ..}
instance Property "Enabled" CRL where
  type PropertyType "Enabled" CRL = Value Prelude.Bool
  set newValue CRL {..} = CRL {enabled = Prelude.pure newValue, ..}
instance Property "Name" CRL where
  type PropertyType "Name" CRL = Value Prelude.Text
  set newValue CRL {..} = CRL {name = newValue, ..}
instance Property "Tags" CRL where
  type PropertyType "Tags" CRL = [Tag]
  set newValue CRL {..} = CRL {tags = Prelude.pure newValue, ..}
instance Property "TrustAnchorArn" CRL where
  type PropertyType "TrustAnchorArn" CRL = Value Prelude.Text
  set newValue CRL {..}
    = CRL {trustAnchorArn = Prelude.pure newValue, ..}