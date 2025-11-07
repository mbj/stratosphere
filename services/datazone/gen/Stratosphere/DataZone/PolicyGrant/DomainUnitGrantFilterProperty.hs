module Stratosphere.DataZone.PolicyGrant.DomainUnitGrantFilterProperty (
        DomainUnitGrantFilterProperty(..), mkDomainUnitGrantFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data DomainUnitGrantFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitgrantfilter.html>
    DomainUnitGrantFilterProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitgrantfilter.html#cfn-datazone-policygrant-domainunitgrantfilter-alldomainunitsgrantfilter>
                                   allDomainUnitsGrantFilter :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainUnitGrantFilterProperty ::
  JSON.Object -> DomainUnitGrantFilterProperty
mkDomainUnitGrantFilterProperty allDomainUnitsGrantFilter
  = DomainUnitGrantFilterProperty
      {haddock_workaround_ = (),
       allDomainUnitsGrantFilter = allDomainUnitsGrantFilter}
instance ToResourceProperties DomainUnitGrantFilterProperty where
  toResourceProperties DomainUnitGrantFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.DomainUnitGrantFilter",
         supportsTags = Prelude.False,
         properties = ["AllDomainUnitsGrantFilter"
                         JSON..= allDomainUnitsGrantFilter]}
instance JSON.ToJSON DomainUnitGrantFilterProperty where
  toJSON DomainUnitGrantFilterProperty {..}
    = JSON.object
        ["AllDomainUnitsGrantFilter" JSON..= allDomainUnitsGrantFilter]
instance Property "AllDomainUnitsGrantFilter" DomainUnitGrantFilterProperty where
  type PropertyType "AllDomainUnitsGrantFilter" DomainUnitGrantFilterProperty = JSON.Object
  set newValue DomainUnitGrantFilterProperty {..}
    = DomainUnitGrantFilterProperty
        {allDomainUnitsGrantFilter = newValue, ..}