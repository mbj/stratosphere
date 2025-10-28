module Stratosphere.CloudFront.KeyGroup.KeyGroupConfigProperty (
        KeyGroupConfigProperty(..), mkKeyGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyGroupConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keygroup-keygroupconfig.html>
    KeyGroupConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keygroup-keygroupconfig.html#cfn-cloudfront-keygroup-keygroupconfig-comment>
                            comment :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keygroup-keygroupconfig.html#cfn-cloudfront-keygroup-keygroupconfig-items>
                            items :: (ValueList Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keygroup-keygroupconfig.html#cfn-cloudfront-keygroup-keygroupconfig-name>
                            name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyGroupConfigProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> KeyGroupConfigProperty
mkKeyGroupConfigProperty items name
  = KeyGroupConfigProperty
      {haddock_workaround_ = (), items = items, name = name,
       comment = Prelude.Nothing}
instance ToResourceProperties KeyGroupConfigProperty where
  toResourceProperties KeyGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::KeyGroup.KeyGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Items" JSON..= items, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))}
instance JSON.ToJSON KeyGroupConfigProperty where
  toJSON KeyGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Items" JSON..= items, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])))
instance Property "Comment" KeyGroupConfigProperty where
  type PropertyType "Comment" KeyGroupConfigProperty = Value Prelude.Text
  set newValue KeyGroupConfigProperty {..}
    = KeyGroupConfigProperty {comment = Prelude.pure newValue, ..}
instance Property "Items" KeyGroupConfigProperty where
  type PropertyType "Items" KeyGroupConfigProperty = ValueList Prelude.Text
  set newValue KeyGroupConfigProperty {..}
    = KeyGroupConfigProperty {items = newValue, ..}
instance Property "Name" KeyGroupConfigProperty where
  type PropertyType "Name" KeyGroupConfigProperty = Value Prelude.Text
  set newValue KeyGroupConfigProperty {..}
    = KeyGroupConfigProperty {name = newValue, ..}