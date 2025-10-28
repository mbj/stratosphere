module Stratosphere.CloudFront.PublicKey.PublicKeyConfigProperty (
        PublicKeyConfigProperty(..), mkPublicKeyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicKeyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-publickey-publickeyconfig.html>
    PublicKeyConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-publickey-publickeyconfig.html#cfn-cloudfront-publickey-publickeyconfig-callerreference>
                             callerReference :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-publickey-publickeyconfig.html#cfn-cloudfront-publickey-publickeyconfig-comment>
                             comment :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-publickey-publickeyconfig.html#cfn-cloudfront-publickey-publickeyconfig-encodedkey>
                             encodedKey :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-publickey-publickeyconfig.html#cfn-cloudfront-publickey-publickeyconfig-name>
                             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicKeyConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> PublicKeyConfigProperty
mkPublicKeyConfigProperty callerReference encodedKey name
  = PublicKeyConfigProperty
      {haddock_workaround_ = (), callerReference = callerReference,
       encodedKey = encodedKey, name = name, comment = Prelude.Nothing}
instance ToResourceProperties PublicKeyConfigProperty where
  toResourceProperties PublicKeyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::PublicKey.PublicKeyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CallerReference" JSON..= callerReference,
                            "EncodedKey" JSON..= encodedKey, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))}
instance JSON.ToJSON PublicKeyConfigProperty where
  toJSON PublicKeyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CallerReference" JSON..= callerReference,
               "EncodedKey" JSON..= encodedKey, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])))
instance Property "CallerReference" PublicKeyConfigProperty where
  type PropertyType "CallerReference" PublicKeyConfigProperty = Value Prelude.Text
  set newValue PublicKeyConfigProperty {..}
    = PublicKeyConfigProperty {callerReference = newValue, ..}
instance Property "Comment" PublicKeyConfigProperty where
  type PropertyType "Comment" PublicKeyConfigProperty = Value Prelude.Text
  set newValue PublicKeyConfigProperty {..}
    = PublicKeyConfigProperty {comment = Prelude.pure newValue, ..}
instance Property "EncodedKey" PublicKeyConfigProperty where
  type PropertyType "EncodedKey" PublicKeyConfigProperty = Value Prelude.Text
  set newValue PublicKeyConfigProperty {..}
    = PublicKeyConfigProperty {encodedKey = newValue, ..}
instance Property "Name" PublicKeyConfigProperty where
  type PropertyType "Name" PublicKeyConfigProperty = Value Prelude.Text
  set newValue PublicKeyConfigProperty {..}
    = PublicKeyConfigProperty {name = newValue, ..}