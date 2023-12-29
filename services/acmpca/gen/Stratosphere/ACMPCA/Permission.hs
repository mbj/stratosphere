module Stratosphere.ACMPCA.Permission (
        Permission(..), mkPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Permission
  = Permission {actions :: (ValueList Prelude.Text),
                certificateAuthorityArn :: (Value Prelude.Text),
                principal :: (Value Prelude.Text),
                sourceAccount :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermission ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Permission
mkPermission actions certificateAuthorityArn principal
  = Permission
      {actions = actions,
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