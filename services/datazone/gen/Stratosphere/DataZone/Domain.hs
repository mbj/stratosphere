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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-domainexecutionrole>
            domainExecutionRole :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-domainversion>
            domainVersion :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-kmskeyidentifier>
            kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-servicerole>
            serviceRole :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-singlesignon>
            singleSignOn :: (Prelude.Maybe SingleSignOnProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domain.html#cfn-datazone-domain-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Value Prelude.Text -> Value Prelude.Text -> Domain
mkDomain domainExecutionRole name
  = Domain
      {haddock_workaround_ = (),
       domainExecutionRole = domainExecutionRole, name = name,
       description = Prelude.Nothing, domainVersion = Prelude.Nothing,
       kmsKeyIdentifier = Prelude.Nothing, serviceRole = Prelude.Nothing,
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
                               (JSON..=) "DomainVersion" Prelude.<$> domainVersion,
                               (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                               (JSON..=) "ServiceRole" Prelude.<$> serviceRole,
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
                  (JSON..=) "DomainVersion" Prelude.<$> domainVersion,
                  (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                  (JSON..=) "ServiceRole" Prelude.<$> serviceRole,
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
instance Property "DomainVersion" Domain where
  type PropertyType "DomainVersion" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {domainVersion = Prelude.pure newValue, ..}
instance Property "KmsKeyIdentifier" Domain where
  type PropertyType "KmsKeyIdentifier" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {kmsKeyIdentifier = Prelude.pure newValue, ..}
instance Property "Name" Domain where
  type PropertyType "Name" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {name = newValue, ..}
instance Property "ServiceRole" Domain where
  type PropertyType "ServiceRole" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {serviceRole = Prelude.pure newValue, ..}
instance Property "SingleSignOn" Domain where
  type PropertyType "SingleSignOn" Domain = SingleSignOnProperty
  set newValue Domain {..}
    = Domain {singleSignOn = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}