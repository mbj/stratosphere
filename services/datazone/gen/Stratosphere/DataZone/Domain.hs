module Stratosphere.DataZone.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Domain.SingleSignOnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = Domain {description :: (Prelude.Maybe (Value Prelude.Text)),
            domainExecutionRole :: (Value Prelude.Text),
            kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Value Prelude.Text),
            singleSignOn :: (Prelude.Maybe SingleSignOnProperty),
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Value Prelude.Text -> Value Prelude.Text -> Domain
mkDomain domainExecutionRole name
  = Domain
      {domainExecutionRole = domainExecutionRole, name = name,
       description = Prelude.Nothing, kmsKeyIdentifier = Prelude.Nothing,
       singleSignOn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Domain", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainExecutionRole" JSON..= domainExecutionRole,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                               (JSON..=) "SingleSignOn" Prelude.<$> singleSignOn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainExecutionRole" JSON..= domainExecutionRole,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                  (JSON..=) "SingleSignOn" Prelude.<$> singleSignOn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Domain where
  type PropertyType "Description" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {description = Prelude.pure newValue, ..}
instance Property "DomainExecutionRole" Domain where
  type PropertyType "DomainExecutionRole" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {domainExecutionRole = newValue, ..}
instance Property "KmsKeyIdentifier" Domain where
  type PropertyType "KmsKeyIdentifier" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {kmsKeyIdentifier = Prelude.pure newValue, ..}
instance Property "Name" Domain where
  type PropertyType "Name" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {name = newValue, ..}
instance Property "SingleSignOn" Domain where
  type PropertyType "SingleSignOn" Domain = SingleSignOnProperty
  set newValue Domain {..}
    = Domain {singleSignOn = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}