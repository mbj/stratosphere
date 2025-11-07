module Stratosphere.DataZone.PolicyGrant.DomainUnitPolicyGrantPrincipalProperty (
        module Exports, DomainUnitPolicyGrantPrincipalProperty(..),
        mkDomainUnitPolicyGrantPrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.DomainUnitGrantFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainUnitPolicyGrantPrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitpolicygrantprincipal.html>
    DomainUnitPolicyGrantPrincipalProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitpolicygrantprincipal.html#cfn-datazone-policygrant-domainunitpolicygrantprincipal-domainunitdesignation>
                                            domainUnitDesignation :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitpolicygrantprincipal.html#cfn-datazone-policygrant-domainunitpolicygrantprincipal-domainunitgrantfilter>
                                            domainUnitGrantFilter :: (Prelude.Maybe DomainUnitGrantFilterProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitpolicygrantprincipal.html#cfn-datazone-policygrant-domainunitpolicygrantprincipal-domainunitidentifier>
                                            domainUnitIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainUnitPolicyGrantPrincipalProperty ::
  DomainUnitPolicyGrantPrincipalProperty
mkDomainUnitPolicyGrantPrincipalProperty
  = DomainUnitPolicyGrantPrincipalProperty
      {haddock_workaround_ = (), domainUnitDesignation = Prelude.Nothing,
       domainUnitGrantFilter = Prelude.Nothing,
       domainUnitIdentifier = Prelude.Nothing}
instance ToResourceProperties DomainUnitPolicyGrantPrincipalProperty where
  toResourceProperties DomainUnitPolicyGrantPrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.DomainUnitPolicyGrantPrincipal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainUnitDesignation"
                              Prelude.<$> domainUnitDesignation,
                            (JSON..=) "DomainUnitGrantFilter"
                              Prelude.<$> domainUnitGrantFilter,
                            (JSON..=) "DomainUnitIdentifier"
                              Prelude.<$> domainUnitIdentifier])}
instance JSON.ToJSON DomainUnitPolicyGrantPrincipalProperty where
  toJSON DomainUnitPolicyGrantPrincipalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainUnitDesignation"
                 Prelude.<$> domainUnitDesignation,
               (JSON..=) "DomainUnitGrantFilter"
                 Prelude.<$> domainUnitGrantFilter,
               (JSON..=) "DomainUnitIdentifier"
                 Prelude.<$> domainUnitIdentifier]))
instance Property "DomainUnitDesignation" DomainUnitPolicyGrantPrincipalProperty where
  type PropertyType "DomainUnitDesignation" DomainUnitPolicyGrantPrincipalProperty = Value Prelude.Text
  set newValue DomainUnitPolicyGrantPrincipalProperty {..}
    = DomainUnitPolicyGrantPrincipalProperty
        {domainUnitDesignation = Prelude.pure newValue, ..}
instance Property "DomainUnitGrantFilter" DomainUnitPolicyGrantPrincipalProperty where
  type PropertyType "DomainUnitGrantFilter" DomainUnitPolicyGrantPrincipalProperty = DomainUnitGrantFilterProperty
  set newValue DomainUnitPolicyGrantPrincipalProperty {..}
    = DomainUnitPolicyGrantPrincipalProperty
        {domainUnitGrantFilter = Prelude.pure newValue, ..}
instance Property "DomainUnitIdentifier" DomainUnitPolicyGrantPrincipalProperty where
  type PropertyType "DomainUnitIdentifier" DomainUnitPolicyGrantPrincipalProperty = Value Prelude.Text
  set newValue DomainUnitPolicyGrantPrincipalProperty {..}
    = DomainUnitPolicyGrantPrincipalProperty
        {domainUnitIdentifier = Prelude.pure newValue, ..}