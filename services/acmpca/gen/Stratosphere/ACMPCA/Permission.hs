module Stratosphere.ACMPCA.Permission (
        Permission(..), mkPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Permission
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-permission.html>
    Permission {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-permission.html#cfn-acmpca-permission-actions>
                actions :: (ValueList Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-permission.html#cfn-acmpca-permission-certificateauthorityarn>
                certificateAuthorityArn :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-permission.html#cfn-acmpca-permission-principal>
                principal :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-permission.html#cfn-acmpca-permission-sourceaccount>
                sourceAccount :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermission ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Permission
mkPermission actions certificateAuthorityArn principal
  = Permission
      {haddock_workaround_ = (), actions = actions,
       certificateAuthorityArn = certificateAuthorityArn,
       principal = principal, sourceAccount = Prelude.Nothing}
instance ToResourceProperties Permission where
  toResourceProperties Permission {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Permission", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions,
                            "CertificateAuthorityArn" JSON..= certificateAuthorityArn,
                            "Principal" JSON..= principal]
                           (Prelude.catMaybes
                              [(JSON..=) "SourceAccount" Prelude.<$> sourceAccount]))}
instance JSON.ToJSON Permission where
  toJSON Permission {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions,
               "CertificateAuthorityArn" JSON..= certificateAuthorityArn,
               "Principal" JSON..= principal]
              (Prelude.catMaybes
                 [(JSON..=) "SourceAccount" Prelude.<$> sourceAccount])))
instance Property "Actions" Permission where
  type PropertyType "Actions" Permission = ValueList Prelude.Text
  set newValue Permission {..} = Permission {actions = newValue, ..}
instance Property "CertificateAuthorityArn" Permission where
  type PropertyType "CertificateAuthorityArn" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {certificateAuthorityArn = newValue, ..}
instance Property "Principal" Permission where
  type PropertyType "Principal" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {principal = newValue, ..}
instance Property "SourceAccount" Permission where
  type PropertyType "SourceAccount" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {sourceAccount = Prelude.pure newValue, ..}