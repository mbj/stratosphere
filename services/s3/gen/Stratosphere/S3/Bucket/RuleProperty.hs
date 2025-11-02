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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html>
    RuleProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-abortincompletemultipartupload>
                  abortIncompleteMultipartUpload :: (Prelude.Maybe AbortIncompleteMultipartUploadProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-expirationdate>
                  expirationDate :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-expirationindays>
                  expirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-expiredobjectdeletemarker>
                  expiredObjectDeleteMarker :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-id>
                  id :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-noncurrentversionexpiration>
                  noncurrentVersionExpiration :: (Prelude.Maybe NoncurrentVersionExpirationProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-noncurrentversionexpirationindays>
                  noncurrentVersionExpirationInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-noncurrentversiontransition>
                  noncurrentVersionTransition :: (Prelude.Maybe NoncurrentVersionTransitionProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-noncurrentversiontransitions>
                  noncurrentVersionTransitions :: (Prelude.Maybe [NoncurrentVersionTransitionProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-objectsizegreaterthan>
                  objectSizeGreaterThan :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-objectsizelessthan>
                  objectSizeLessThan :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-prefix>
                  prefix :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-status>
                  status :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-tagfilters>
                  tagFilters :: (Prelude.Maybe [TagFilterProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-transition>
                  transition :: (Prelude.Maybe TransitionProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-rule.html#cfn-s3-bucket-rule-transitions>
                  transitions :: (Prelude.Maybe [TransitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: Value Prelude.Text -> RuleProperty
mkRuleProperty status
  = RuleProperty
      {haddock_workaround_ = (), status = status,
       abortIncompleteMultipartUpload = Prelude.Nothing,
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