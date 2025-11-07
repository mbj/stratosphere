module Stratosphere.DataZone.PolicyGrant.ProjectPolicyGrantPrincipalProperty (
        module Exports, ProjectPolicyGrantPrincipalProperty(..),
        mkProjectPolicyGrantPrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.ProjectGrantFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectPolicyGrantPrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html>
    ProjectPolicyGrantPrincipalProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html#cfn-datazone-policygrant-projectpolicygrantprincipal-projectdesignation>
                                         projectDesignation :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html#cfn-datazone-policygrant-projectpolicygrantprincipal-projectgrantfilter>
                                         projectGrantFilter :: (Prelude.Maybe ProjectGrantFilterProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html#cfn-datazone-policygrant-projectpolicygrantprincipal-projectidentifier>
                                         projectIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectPolicyGrantPrincipalProperty ::
  ProjectPolicyGrantPrincipalProperty
mkProjectPolicyGrantPrincipalProperty
  = ProjectPolicyGrantPrincipalProperty
      {haddock_workaround_ = (), projectDesignation = Prelude.Nothing,
       projectGrantFilter = Prelude.Nothing,
       projectIdentifier = Prelude.Nothing}
instance ToResourceProperties ProjectPolicyGrantPrincipalProperty where
  toResourceProperties ProjectPolicyGrantPrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.ProjectPolicyGrantPrincipal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProjectDesignation" Prelude.<$> projectDesignation,
                            (JSON..=) "ProjectGrantFilter" Prelude.<$> projectGrantFilter,
                            (JSON..=) "ProjectIdentifier" Prelude.<$> projectIdentifier])}
instance JSON.ToJSON ProjectPolicyGrantPrincipalProperty where
  toJSON ProjectPolicyGrantPrincipalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProjectDesignation" Prelude.<$> projectDesignation,
               (JSON..=) "ProjectGrantFilter" Prelude.<$> projectGrantFilter,
               (JSON..=) "ProjectIdentifier" Prelude.<$> projectIdentifier]))
instance Property "ProjectDesignation" ProjectPolicyGrantPrincipalProperty where
  type PropertyType "ProjectDesignation" ProjectPolicyGrantPrincipalProperty = Value Prelude.Text
  set newValue ProjectPolicyGrantPrincipalProperty {..}
    = ProjectPolicyGrantPrincipalProperty
        {projectDesignation = Prelude.pure newValue, ..}
instance Property "ProjectGrantFilter" ProjectPolicyGrantPrincipalProperty where
  type PropertyType "ProjectGrantFilter" ProjectPolicyGrantPrincipalProperty = ProjectGrantFilterProperty
  set newValue ProjectPolicyGrantPrincipalProperty {..}
    = ProjectPolicyGrantPrincipalProperty
        {projectGrantFilter = Prelude.pure newValue, ..}
instance Property "ProjectIdentifier" ProjectPolicyGrantPrincipalProperty where
  type PropertyType "ProjectIdentifier" ProjectPolicyGrantPrincipalProperty = Value Prelude.Text
  set newValue ProjectPolicyGrantPrincipalProperty {..}
    = ProjectPolicyGrantPrincipalProperty
        {projectIdentifier = Prelude.pure newValue, ..}