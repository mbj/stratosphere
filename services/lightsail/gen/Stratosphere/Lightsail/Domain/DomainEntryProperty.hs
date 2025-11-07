module Stratosphere.Lightsail.Domain.DomainEntryProperty (
        DomainEntryProperty(..), mkDomainEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-domain-domainentry.html>
    DomainEntryProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-domain-domainentry.html#cfn-lightsail-domain-domainentry-id>
                         id :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-domain-domainentry.html#cfn-lightsail-domain-domainentry-isalias>
                         isAlias :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-domain-domainentry.html#cfn-lightsail-domain-domainentry-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-domain-domainentry.html#cfn-lightsail-domain-domainentry-target>
                         target :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-domain-domainentry.html#cfn-lightsail-domain-domainentry-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DomainEntryProperty
mkDomainEntryProperty name target type'
  = DomainEntryProperty
      {haddock_workaround_ = (), name = name, target = target,
       type' = type', id = Prelude.Nothing, isAlias = Prelude.Nothing}
instance ToResourceProperties DomainEntryProperty where
  toResourceProperties DomainEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Domain.DomainEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Target" JSON..= target,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "IsAlias" Prelude.<$> isAlias]))}
instance JSON.ToJSON DomainEntryProperty where
  toJSON DomainEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Target" JSON..= target,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "IsAlias" Prelude.<$> isAlias])))
instance Property "Id" DomainEntryProperty where
  type PropertyType "Id" DomainEntryProperty = Value Prelude.Text
  set newValue DomainEntryProperty {..}
    = DomainEntryProperty {id = Prelude.pure newValue, ..}
instance Property "IsAlias" DomainEntryProperty where
  type PropertyType "IsAlias" DomainEntryProperty = Value Prelude.Bool
  set newValue DomainEntryProperty {..}
    = DomainEntryProperty {isAlias = Prelude.pure newValue, ..}
instance Property "Name" DomainEntryProperty where
  type PropertyType "Name" DomainEntryProperty = Value Prelude.Text
  set newValue DomainEntryProperty {..}
    = DomainEntryProperty {name = newValue, ..}
instance Property "Target" DomainEntryProperty where
  type PropertyType "Target" DomainEntryProperty = Value Prelude.Text
  set newValue DomainEntryProperty {..}
    = DomainEntryProperty {target = newValue, ..}
instance Property "Type" DomainEntryProperty where
  type PropertyType "Type" DomainEntryProperty = Value Prelude.Text
  set newValue DomainEntryProperty {..}
    = DomainEntryProperty {type' = newValue, ..}