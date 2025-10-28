module Stratosphere.PaymentCryptography.Alias (
        Alias(..), mkAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alias
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-alias.html>
    Alias {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-alias.html#cfn-paymentcryptography-alias-aliasname>
           aliasName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-alias.html#cfn-paymentcryptography-alias-keyarn>
           keyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlias :: Value Prelude.Text -> Alias
mkAlias aliasName
  = Alias
      {haddock_workaround_ = (), aliasName = aliasName,
       keyArn = Prelude.Nothing}
instance ToResourceProperties Alias where
  toResourceProperties Alias {..}
    = ResourceProperties
        {awsType = "AWS::PaymentCryptography::Alias",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AliasName" JSON..= aliasName]
                           (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn]))}
instance JSON.ToJSON Alias where
  toJSON Alias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AliasName" JSON..= aliasName]
              (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn])))
instance Property "AliasName" Alias where
  type PropertyType "AliasName" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {aliasName = newValue, ..}
instance Property "KeyArn" Alias where
  type PropertyType "KeyArn" Alias = Value Prelude.Text
  set newValue Alias {..}
    = Alias {keyArn = Prelude.pure newValue, ..}