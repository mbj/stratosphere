module Stratosphere.S3.Bucket.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.AbortIncompleteMultipartUploadProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.NoncurrentVersionExpirationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.NoncurrentVersionTransitionProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.TagFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.TransitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {abortIncompleteMultipartUpload :: (Prelude.Maybe AbortIncompleteMultipartUploadProperty),
                  expirationDate :: (Prelude.Maybe (Value Prelude.Text)),
                  expirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  expiredObjectDeleteMarker :: (Prelude.Maybe (Value Prelude.Bool)),
                  id :: (Prelude.Maybe (Value Prelude.Text)),
                  noncurrentVersionExpiration :: (Prelude.Maybe NoncurrentVersionExpirationProperty),
                  noncurrentVersionExpirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  noncurrentVersionTransition :: (Prelude.Maybe NoncurrentVersionTransitionProperty),
                  noncurrentVersionTransitions :: (Prelude.Maybe [NoncurrentVersionTransitionProperty]),
                  objectSizeGreaterThan :: (Prelude.Maybe (Value Prelude.Text)),
                  objectSizeLessThan :: (Prelude.Maybe (Value Prelude.Text)),
                  prefix :: (Prelude.Maybe (Value Prelude.Text)),
                  status :: (Value Prelude.Text),
                  tagFilters :: (Prelude.Maybe [TagFilterProperty]),
                  transition :: (Prelude.Maybe TransitionProperty),
                  transitions :: (Prelude.Maybe [TransitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: Value Prelude.Text -> RuleProperty
mkRuleProperty status
  = RuleProperty
      {status = status, abortIncompleteMultipartUpload = Prelude.Nothing,
       expirationDate = Prelude.Nothing,
       expirationInDays = Prelude.Nothing,
       expiredObjectDeleteMarker = Prelude.Nothing, id = Prelude.Nothing,
       noncurrentVersionExpiration = Prelude.Nothing,
       noncurrentVersionExpirationInDays = Prelude.Nothing,
       noncurrentVersionTransition = Prelude.Nothing,
       noncurrentVersionTransitions = Prelude.Nothing,
       objectSizeGreaterThan = Prelude.Nothing,
       objectSizeLessThan = Prelude.Nothing, prefix = Prelude.Nothing,
       tagFilters = Prelude.Nothing, transition = Prelude.Nothing,
       transitions = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.Rule", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "AbortIncompleteMultipartUpload"
                                 Prelude.<$> abortIncompleteMultipartUpload,
                               (JSON..=) "ExpirationDate" Prelude.<$> expirationDate,
                               (JSON..=) "ExpirationInDays" Prelude.<$> expirationInDays,
                               (JSON..=) "ExpiredObjectDeleteMarker"
                                 Prelude.<$> expiredObjectDeleteMarker,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "NoncurrentVersionExpiration"
                                 Prelude.<$> noncurrentVersionExpiration,
                               (JSON..=) "NoncurrentVersionExpirationInDays"
                                 Prelude.<$> noncurrentVersionExpirationInDays,
                               (JSON..=) "NoncurrentVersionTransition"
                                 Prelude.<$> noncurrentVersionTransition,
                               (JSON..=) "NoncurrentVersionTransitions"
                                 Prelude.<$> noncurrentVersionTransitions,
                               (JSON..=) "ObjectSizeGreaterThan"
                                 Prelude.<$> objectSizeGreaterThan,
                               (JSON..=) "ObjectSizeLessThan" Prelude.<$> objectSizeLessThan,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "TagFilters" Prelude.<$> tagFilters,
                               (JSON..=) "Transition" Prelude.<$> transition,
                               (JSON..=) "Transitions" Prelude.<$> transitions]))}
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
                  (JSON..=) "ExpiredObjectDeleteMarker"
                    Prelude.<$> expiredObjectDeleteMarker,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "NoncurrentVersionExpiration"
                    Prelude.<$> noncurrentVersionExpiration,
                  (JSON..=) "NoncurrentVersionExpirationInDays"
                    Prelude.<$> noncurrentVersionExpirationInDays,
                  (JSON..=) "NoncurrentVersionTransition"
                    Prelude.<$> noncurrentVersionTransition,
                  (JSON..=) "NoncurrentVersionTransitions"
                    Prelude.<$> noncurrentVersionTransitions,
                  (JSON..=) "ObjectSizeGreaterThan"
                    Prelude.<$> objectSizeGreaterThan,
                  (JSON..=) "ObjectSizeLessThan" Prelude.<$> objectSizeLessThan,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "TagFilters" Prelude.<$> tagFilters,
                  (JSON..=) "Transition" Prelude.<$> transition,
                  (JSON..=) "Transitions" Prelude.<$> transitions])))
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
instance Property "ExpiredObjectDeleteMarker" RuleProperty where
  type PropertyType "ExpiredObjectDeleteMarker" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty
        {expiredObjectDeleteMarker = Prelude.pure newValue, ..}
instance Property "Id" RuleProperty where
  type PropertyType "Id" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {id = Prelude.pure newValue, ..}
instance Property "NoncurrentVersionExpiration" RuleProperty where
  type PropertyType "NoncurrentVersionExpiration" RuleProperty = NoncurrentVersionExpirationProperty
  set newValue RuleProperty {..}
    = RuleProperty
        {noncurrentVersionExpiration = Prelude.pure newValue, ..}
instance Property "NoncurrentVersionExpirationInDays" RuleProperty where
  type PropertyType "NoncurrentVersionExpirationInDays" RuleProperty = Value Prelude.Integer
  set newValue RuleProperty {..}
    = RuleProperty
        {noncurrentVersionExpirationInDays = Prelude.pure newValue, ..}
instance Property "NoncurrentVersionTransition" RuleProperty where
  type PropertyType "NoncurrentVersionTransition" RuleProperty = NoncurrentVersionTransitionProperty
  set newValue RuleProperty {..}
    = RuleProperty
        {noncurrentVersionTransition = Prelude.pure newValue, ..}
instance Property "NoncurrentVersionTransitions" RuleProperty where
  type PropertyType "NoncurrentVersionTransitions" RuleProperty = [NoncurrentVersionTransitionProperty]
  set newValue RuleProperty {..}
    = RuleProperty
        {noncurrentVersionTransitions = Prelude.pure newValue, ..}
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
instance Property "TagFilters" RuleProperty where
  type PropertyType "TagFilters" RuleProperty = [TagFilterProperty]
  set newValue RuleProperty {..}
    = RuleProperty {tagFilters = Prelude.pure newValue, ..}
instance Property "Transition" RuleProperty where
  type PropertyType "Transition" RuleProperty = TransitionProperty
  set newValue RuleProperty {..}
    = RuleProperty {transition = Prelude.pure newValue, ..}
instance Property "Transitions" RuleProperty where
  type PropertyType "Transitions" RuleProperty = [TransitionProperty]
  set newValue RuleProperty {..}
    = RuleProperty {transitions = Prelude.pure newValue, ..}