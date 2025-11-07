module Stratosphere.DataZone.PolicyGrant.DomainUnitFilterForProjectProperty (
        DomainUnitFilterForProjectProperty(..),
        mkDomainUnitFilterForProjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainUnitFilterForProjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitfilterforproject.html>
    DomainUnitFilterForProjectProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitfilterforproject.html#cfn-datazone-policygrant-domainunitfilterforproject-domainunit>
                                        domainUnit :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitfilterforproject.html#cfn-datazone-policygrant-domainunitfilterforproject-includechilddomainunits>
                                        includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainUnitFilterForProjectProperty ::
  Value Prelude.Text -> DomainUnitFilterForProjectProperty
mkDomainUnitFilterForProjectProperty domainUnit
  = DomainUnitFilterForProjectProperty
      {haddock_workaround_ = (), domainUnit = domainUnit,
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties DomainUnitFilterForProjectProperty where
  toResourceProperties DomainUnitFilterForProjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.DomainUnitFilterForProject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainUnit" JSON..= domainUnit]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeChildDomainUnits"
                                 Prelude.<$> includeChildDomainUnits]))}
instance JSON.ToJSON DomainUnitFilterForProjectProperty where
  toJSON DomainUnitFilterForProjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainUnit" JSON..= domainUnit]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeChildDomainUnits"
                    Prelude.<$> includeChildDomainUnits])))
instance Property "DomainUnit" DomainUnitFilterForProjectProperty where
  type PropertyType "DomainUnit" DomainUnitFilterForProjectProperty = Value Prelude.Text
  set newValue DomainUnitFilterForProjectProperty {..}
    = DomainUnitFilterForProjectProperty {domainUnit = newValue, ..}
instance Property "IncludeChildDomainUnits" DomainUnitFilterForProjectProperty where
  type PropertyType "IncludeChildDomainUnits" DomainUnitFilterForProjectProperty = Value Prelude.Bool
  set newValue DomainUnitFilterForProjectProperty {..}
    = DomainUnitFilterForProjectProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}