module Stratosphere.S3Express.DirectoryBucket.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Express.DirectoryBucket.AbortIncompleteMultipartUploadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {abortIncompleteMultipartUpload :: (Prelude.Maybe AbortIncompleteMultipartUploadProperty),
                  expirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  id :: (Prelude.Maybe (Value Prelude.Text)),
                  objectSizeGreaterThan :: (Prelude.Maybe (Value Prelude.Text)),
                  objectSizeLessThan :: (Prelude.Maybe (Value Prelude.Text)),
                  prefix :: (Prelude.Maybe (Value Prelude.Text)),
                  status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: Value Prelude.Text -> RuleProperty
mkRuleProperty status
  = RuleProperty
      {status = status, abortIncompleteMultipartUpload = Prelude.Nothing,
       expirationInDays = Prelude.Nothing, id = Prelude.Nothing,
       objectSizeGreaterThan = Prelude.Nothing,
       objectSizeLessThan = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::DirectoryBucket.Rule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "AbortIncompleteMultipartUpload"
                                 Prelude.<$> abortIncompleteMultipartUpload,
                               (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "ObjectSizeGreaterThan"
                                 Prelude.<$> objectSizeGreaterThan,
                               (JSON..=) "ObjectSizeLessThan" Prelude.<$> objectSizeLessThan,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "AbortIncompleteMultipartUpload"
                    Prelude.<$> abortIncompleteMultipartUpload,
                  (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "ObjectSizeGreaterThan"
                    Prelude.<$> objectSizeGreaterThan,
                  (JSON..=) "ObjectSizeLessThan" Prelude.<$> objectSizeLessThan,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "AbortIncompleteMultipartUpload" RuleProperty where
  type PropertyType "AbortIncompleteMultipartUpload" RuleProperty = AbortIncompleteMultipartUploadProperty
  set newValue RuleProperty {..}
    = RuleProperty
        {abortIncompleteMultipartUpload = Prelude.pure newValue, ..}
instance Property "ExpirationInDays" RuleProperty where
  type PropertyType "ExpirationInDays" RuleProperty = Value Prelude.Integer
  set newValue RuleProperty {..}
    = RuleProperty {expirationInDays = Prelude.pure newValue, ..}
instance Property "Id" RuleProperty where
  type PropertyType "Id" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {id = Prelude.pure newValue, ..}
instance Property "ObjectSizeGreaterThan" RuleProperty where
  type PropertyType "ObjectSizeGreaterThan" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {objectSizeGreaterThan = Prelude.pure newValue, ..}
instance Property "ObjectSizeLessThan" RuleProperty where
  type PropertyType "ObjectSizeLessThan" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {objectSizeLessThan = Prelude.pure newValue, ..}
instance Property "Prefix" RuleProperty where
  type PropertyType "Prefix" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {prefix = Prelude.pure newValue, ..}
instance Property "Status" RuleProperty where
  type PropertyType "Status" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {status = newValue, ..}