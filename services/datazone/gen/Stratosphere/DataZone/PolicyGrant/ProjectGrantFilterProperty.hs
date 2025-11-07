module Stratosphere.DataZone.PolicyGrant.ProjectGrantFilterProperty (
        module Exports, ProjectGrantFilterProperty(..),
        mkProjectGrantFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.DomainUnitFilterForProjectProperty as Exports
import Stratosphere.ResourceProperties
data ProjectGrantFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectgrantfilter.html>
    ProjectGrantFilterProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectgrantfilter.html#cfn-datazone-policygrant-projectgrantfilter-domainunitfilter>
                                domainUnitFilter :: DomainUnitFilterForProjectProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectGrantFilterProperty ::
  DomainUnitFilterForProjectProperty -> ProjectGrantFilterProperty
mkProjectGrantFilterProperty domainUnitFilter
  = ProjectGrantFilterProperty
      {haddock_workaround_ = (), domainUnitFilter = domainUnitFilter}
instance ToResourceProperties ProjectGrantFilterProperty where
  toResourceProperties ProjectGrantFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.ProjectGrantFilter",
         supportsTags = Prelude.False,
         properties = ["DomainUnitFilter" JSON..= domainUnitFilter]}
instance JSON.ToJSON ProjectGrantFilterProperty where
  toJSON ProjectGrantFilterProperty {..}
    = JSON.object ["DomainUnitFilter" JSON..= domainUnitFilter]
instance Property "DomainUnitFilter" ProjectGrantFilterProperty where
  type PropertyType "DomainUnitFilter" ProjectGrantFilterProperty = DomainUnitFilterForProjectProperty
  set newValue ProjectGrantFilterProperty {..}
    = ProjectGrantFilterProperty {domainUnitFilter = newValue, ..}