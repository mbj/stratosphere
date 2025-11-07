module Stratosphere.DataZone.DomainUnit (
        DomainUnit(..), mkDomainUnit
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainUnit
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domainunit.html>
    DomainUnit {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domainunit.html#cfn-datazone-domainunit-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domainunit.html#cfn-datazone-domainunit-domainidentifier>
                domainIdentifier :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domainunit.html#cfn-datazone-domainunit-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-domainunit.html#cfn-datazone-domainunit-parentdomainunitidentifier>
                parentDomainUnitIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainUnit ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DomainUnit
mkDomainUnit domainIdentifier name parentDomainUnitIdentifier
  = DomainUnit
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       name = name,
       parentDomainUnitIdentifier = parentDomainUnitIdentifier,
       description = Prelude.Nothing}
instance ToResourceProperties DomainUnit where
  toResourceProperties DomainUnit {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DomainUnit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name,
                            "ParentDomainUnitIdentifier" JSON..= parentDomainUnitIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON DomainUnit where
  toJSON DomainUnit {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name,
               "ParentDomainUnitIdentifier" JSON..= parentDomainUnitIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" DomainUnit where
  type PropertyType "Description" DomainUnit = Value Prelude.Text
  set newValue DomainUnit {..}
    = DomainUnit {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" DomainUnit where
  type PropertyType "DomainIdentifier" DomainUnit = Value Prelude.Text
  set newValue DomainUnit {..}
    = DomainUnit {domainIdentifier = newValue, ..}
instance Property "Name" DomainUnit where
  type PropertyType "Name" DomainUnit = Value Prelude.Text
  set newValue DomainUnit {..} = DomainUnit {name = newValue, ..}
instance Property "ParentDomainUnitIdentifier" DomainUnit where
  type PropertyType "ParentDomainUnitIdentifier" DomainUnit = Value Prelude.Text
  set newValue DomainUnit {..}
    = DomainUnit {parentDomainUnitIdentifier = newValue, ..}