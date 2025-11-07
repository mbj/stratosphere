module Stratosphere.Lightsail.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Domain.DomainEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-domain.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-domain.html#cfn-lightsail-domain-domainentries>
            domainEntries :: (Prelude.Maybe [DomainEntryProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-domain.html#cfn-lightsail-domain-domainname>
            domainName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-domain.html#cfn-lightsail-domain-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Value Prelude.Text -> Domain
mkDomain domainName
  = Domain
      {haddock_workaround_ = (), domainName = domainName,
       domainEntries = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Domain", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "DomainEntries" Prelude.<$> domainEntries,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "DomainEntries" Prelude.<$> domainEntries,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DomainEntries" Domain where
  type PropertyType "DomainEntries" Domain = [DomainEntryProperty]
  set newValue Domain {..}
    = Domain {domainEntries = Prelude.pure newValue, ..}
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {domainName = newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}