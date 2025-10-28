module Stratosphere.CustomerProfiles.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.MatchingProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.RuleBasedMatchingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-deadletterqueueurl>
            deadLetterQueueUrl :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-defaultencryptionkey>
            defaultEncryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-defaultexpirationdays>
            defaultExpirationDays :: (Value Prelude.Integer),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-domainname>
            domainName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-matching>
            matching :: (Prelude.Maybe MatchingProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-rulebasedmatching>
            ruleBasedMatching :: (Prelude.Maybe RuleBasedMatchingProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-domain.html#cfn-customerprofiles-domain-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Value Prelude.Integer -> Value Prelude.Text -> Domain
mkDomain defaultExpirationDays domainName
  = Domain
      {haddock_workaround_ = (),
       defaultExpirationDays = defaultExpirationDays,
       domainName = domainName, deadLetterQueueUrl = Prelude.Nothing,
       defaultEncryptionKey = Prelude.Nothing, matching = Prelude.Nothing,
       ruleBasedMatching = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultExpirationDays" JSON..= defaultExpirationDays,
                            "DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "DeadLetterQueueUrl" Prelude.<$> deadLetterQueueUrl,
                               (JSON..=) "DefaultEncryptionKey" Prelude.<$> defaultEncryptionKey,
                               (JSON..=) "Matching" Prelude.<$> matching,
                               (JSON..=) "RuleBasedMatching" Prelude.<$> ruleBasedMatching,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultExpirationDays" JSON..= defaultExpirationDays,
               "DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "DeadLetterQueueUrl" Prelude.<$> deadLetterQueueUrl,
                  (JSON..=) "DefaultEncryptionKey" Prelude.<$> defaultEncryptionKey,
                  (JSON..=) "Matching" Prelude.<$> matching,
                  (JSON..=) "RuleBasedMatching" Prelude.<$> ruleBasedMatching,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeadLetterQueueUrl" Domain where
  type PropertyType "DeadLetterQueueUrl" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {deadLetterQueueUrl = Prelude.pure newValue, ..}
instance Property "DefaultEncryptionKey" Domain where
  type PropertyType "DefaultEncryptionKey" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {defaultEncryptionKey = Prelude.pure newValue, ..}
instance Property "DefaultExpirationDays" Domain where
  type PropertyType "DefaultExpirationDays" Domain = Value Prelude.Integer
  set newValue Domain {..}
    = Domain {defaultExpirationDays = newValue, ..}
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {domainName = newValue, ..}
instance Property "Matching" Domain where
  type PropertyType "Matching" Domain = MatchingProperty
  set newValue Domain {..}
    = Domain {matching = Prelude.pure newValue, ..}
instance Property "RuleBasedMatching" Domain where
  type PropertyType "RuleBasedMatching" Domain = RuleBasedMatchingProperty
  set newValue Domain {..}
    = Domain {ruleBasedMatching = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}