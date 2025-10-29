module Stratosphere.S3.Bucket.RedirectRuleProperty (
        RedirectRuleProperty(..), mkRedirectRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedirectRuleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectrule.html>
    RedirectRuleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectrule.html#cfn-s3-bucket-redirectrule-hostname>
                          hostName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectrule.html#cfn-s3-bucket-redirectrule-httpredirectcode>
                          httpRedirectCode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectrule.html#cfn-s3-bucket-redirectrule-protocol>
                          protocol :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectrule.html#cfn-s3-bucket-redirectrule-replacekeyprefixwith>
                          replaceKeyPrefixWith :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectrule.html#cfn-s3-bucket-redirectrule-replacekeywith>
                          replaceKeyWith :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedirectRuleProperty :: RedirectRuleProperty
mkRedirectRuleProperty
  = RedirectRuleProperty
      {hostName = Prelude.Nothing, httpRedirectCode = Prelude.Nothing,
       protocol = Prelude.Nothing, replaceKeyPrefixWith = Prelude.Nothing,
       replaceKeyWith = Prelude.Nothing}
instance ToResourceProperties RedirectRuleProperty where
  toResourceProperties RedirectRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RedirectRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HostName" Prelude.<$> hostName,
                            (JSON..=) "HttpRedirectCode" Prelude.<$> httpRedirectCode,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "ReplaceKeyPrefixWith" Prelude.<$> replaceKeyPrefixWith,
                            (JSON..=) "ReplaceKeyWith" Prelude.<$> replaceKeyWith])}
instance JSON.ToJSON RedirectRuleProperty where
  toJSON RedirectRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HostName" Prelude.<$> hostName,
               (JSON..=) "HttpRedirectCode" Prelude.<$> httpRedirectCode,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "ReplaceKeyPrefixWith" Prelude.<$> replaceKeyPrefixWith,
               (JSON..=) "ReplaceKeyWith" Prelude.<$> replaceKeyWith]))
instance Property "HostName" RedirectRuleProperty where
  type PropertyType "HostName" RedirectRuleProperty = Value Prelude.Text
  set newValue RedirectRuleProperty {..}
    = RedirectRuleProperty {hostName = Prelude.pure newValue, ..}
instance Property "HttpRedirectCode" RedirectRuleProperty where
  type PropertyType "HttpRedirectCode" RedirectRuleProperty = Value Prelude.Text
  set newValue RedirectRuleProperty {..}
    = RedirectRuleProperty
        {httpRedirectCode = Prelude.pure newValue, ..}
instance Property "Protocol" RedirectRuleProperty where
  type PropertyType "Protocol" RedirectRuleProperty = Value Prelude.Text
  set newValue RedirectRuleProperty {..}
    = RedirectRuleProperty {protocol = Prelude.pure newValue, ..}
instance Property "ReplaceKeyPrefixWith" RedirectRuleProperty where
  type PropertyType "ReplaceKeyPrefixWith" RedirectRuleProperty = Value Prelude.Text
  set newValue RedirectRuleProperty {..}
    = RedirectRuleProperty
        {replaceKeyPrefixWith = Prelude.pure newValue, ..}
instance Property "ReplaceKeyWith" RedirectRuleProperty where
  type PropertyType "ReplaceKeyWith" RedirectRuleProperty = Value Prelude.Text
  set newValue RedirectRuleProperty {..}
    = RedirectRuleProperty {replaceKeyWith = Prelude.pure newValue, ..}