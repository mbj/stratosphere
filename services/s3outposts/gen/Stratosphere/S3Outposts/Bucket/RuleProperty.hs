module Stratosphere.S3Outposts.Bucket.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.AbortIncompleteMultipartUploadProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.FilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {abortIncompleteMultipartUpload :: (Prelude.Maybe AbortIncompleteMultipartUploadProperty),
                  expirationDate :: (Prelude.Maybe (Value Prelude.Text)),
                  expirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  filter :: (Prelude.Maybe FilterProperty),
                  id :: (Prelude.Maybe (Value Prelude.Text)),
                  status :: (Value Prelude.Text)}
mkRuleProperty :: Value Prelude.Text -> RuleProperty
mkRuleProperty status
  = RuleProperty
      {status = status, abortIncompleteMultipartUpload = Prelude.Nothing,
       expirationDate = Prelude.Nothing,
       expirationInDays = Prelude.Nothing, filter = Prelude.Nothing,
       id = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket.Rule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "AbortIncompleteMultipartUpload"
                                 Prelude.<$> abortIncompleteMultipartUpload,
                               (JSON..=) "ExpirationDate" Prelude.<$> expirationDate,
                               (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                               (JSON..=) "Filter" Prelude.<$> filter,
                               (JSON..=) "Id" Prelude.<$> id]))}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "AbortIncompleteMultipartUpload"
                    Prelude.<$> abortIncompleteMultipartUpload,
                  (JSON..=) "ExpirationDate" Prelude.<$> expirationDate,
                  (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                  (JSON..=) "Filter" Prelude.<$> filter,
                  (JSON..=) "Id" Prelude.<$> id])))
instance Property "AbortIncompleteMultipartUpload" RuleProperty where
  type PropertyType "AbortIncompleteMultipartUpload" RuleProperty = AbortIncompleteMultipartUploadProperty
  set newValue RuleProperty {..}
    = RuleProperty
        {abortIncompleteMultipartUpload = Prelude.pure newValue, ..}
instance Property "ExpirationDate" RuleProperty where
  type PropertyType "ExpirationDate" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {expirationDate = Prelude.pure newValue, ..}
instance Property "ExpirationInDays" RuleProperty where
  type PropertyType "ExpirationInDays" RuleProperty = Value Prelude.Integer
  set newValue RuleProperty {..}
    = RuleProperty {expirationInDays = Prelude.pure newValue, ..}
instance Property "Filter" RuleProperty where
  type PropertyType "Filter" RuleProperty = FilterProperty
  set newValue RuleProperty {..}
    = RuleProperty {filter = Prelude.pure newValue, ..}
instance Property "Id" RuleProperty where
  type PropertyType "Id" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {id = Prelude.pure newValue, ..}
instance Property "Status" RuleProperty where
  type PropertyType "Status" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {status = newValue, ..}