module Stratosphere.CustomerProfiles.Domain (
        Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = Domain {deadLetterQueueUrl :: (Prelude.Maybe (Value Prelude.Text)),
            defaultEncryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
            defaultExpirationDays :: (Prelude.Maybe (Value Prelude.Integer)),
            domainName :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag])}
mkDomain :: Value Prelude.Text -> Domain
mkDomain domainName
  = Domain
      {domainName = domainName, deadLetterQueueUrl = Prelude.Nothing,
       defaultEncryptionKey = Prelude.Nothing,
       defaultExpirationDays = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "DeadLetterQueueUrl" Prelude.<$> deadLetterQueueUrl,
                               (JSON..=) "DefaultEncryptionKey" Prelude.<$> defaultEncryptionKey,
                               (JSON..=) "DefaultExpirationDays"
                                 Prelude.<$> defaultExpirationDays,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "DeadLetterQueueUrl" Prelude.<$> deadLetterQueueUrl,
                  (JSON..=) "DefaultEncryptionKey" Prelude.<$> defaultEncryptionKey,
                  (JSON..=) "DefaultExpirationDays"
                    Prelude.<$> defaultExpirationDays,
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
    = Domain {defaultExpirationDays = Prelude.pure newValue, ..}
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {domainName = newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}