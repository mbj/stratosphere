module Stratosphere.CloudFront.DistributionTenant (
        module Exports, DistributionTenant(..), mkDistributionTenant
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.DistributionTenant.CustomizationsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.DistributionTenant.ManagedCertificateRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.DistributionTenant.ParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DistributionTenant
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html>
    DistributionTenant {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-connectiongroupid>
                        connectionGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-customizations>
                        customizations :: (Prelude.Maybe CustomizationsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-distributionid>
                        distributionId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-domains>
                        domains :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-enabled>
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-managedcertificaterequest>
                        managedCertificateRequest :: (Prelude.Maybe ManagedCertificateRequestProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-parameters>
                        parameters :: (Prelude.Maybe [ParameterProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distributiontenant.html#cfn-cloudfront-distributiontenant-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistributionTenant ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> DistributionTenant
mkDistributionTenant distributionId domains name
  = DistributionTenant
      {haddock_workaround_ = (), distributionId = distributionId,
       domains = domains, name = name,
       connectionGroupId = Prelude.Nothing,
       customizations = Prelude.Nothing, enabled = Prelude.Nothing,
       managedCertificateRequest = Prelude.Nothing,
       parameters = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DistributionTenant where
  toResourceProperties DistributionTenant {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DistributionId" JSON..= distributionId,
                            "Domains" JSON..= domains, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionGroupId" Prelude.<$> connectionGroupId,
                               (JSON..=) "Customizations" Prelude.<$> customizations,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "ManagedCertificateRequest"
                                 Prelude.<$> managedCertificateRequest,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DistributionTenant where
  toJSON DistributionTenant {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DistributionId" JSON..= distributionId,
               "Domains" JSON..= domains, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionGroupId" Prelude.<$> connectionGroupId,
                  (JSON..=) "Customizations" Prelude.<$> customizations,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "ManagedCertificateRequest"
                    Prelude.<$> managedCertificateRequest,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectionGroupId" DistributionTenant where
  type PropertyType "ConnectionGroupId" DistributionTenant = Value Prelude.Text
  set newValue DistributionTenant {..}
    = DistributionTenant
        {connectionGroupId = Prelude.pure newValue, ..}
instance Property "Customizations" DistributionTenant where
  type PropertyType "Customizations" DistributionTenant = CustomizationsProperty
  set newValue DistributionTenant {..}
    = DistributionTenant {customizations = Prelude.pure newValue, ..}
instance Property "DistributionId" DistributionTenant where
  type PropertyType "DistributionId" DistributionTenant = Value Prelude.Text
  set newValue DistributionTenant {..}
    = DistributionTenant {distributionId = newValue, ..}
instance Property "Domains" DistributionTenant where
  type PropertyType "Domains" DistributionTenant = ValueList Prelude.Text
  set newValue DistributionTenant {..}
    = DistributionTenant {domains = newValue, ..}
instance Property "Enabled" DistributionTenant where
  type PropertyType "Enabled" DistributionTenant = Value Prelude.Bool
  set newValue DistributionTenant {..}
    = DistributionTenant {enabled = Prelude.pure newValue, ..}
instance Property "ManagedCertificateRequest" DistributionTenant where
  type PropertyType "ManagedCertificateRequest" DistributionTenant = ManagedCertificateRequestProperty
  set newValue DistributionTenant {..}
    = DistributionTenant
        {managedCertificateRequest = Prelude.pure newValue, ..}
instance Property "Name" DistributionTenant where
  type PropertyType "Name" DistributionTenant = Value Prelude.Text
  set newValue DistributionTenant {..}
    = DistributionTenant {name = newValue, ..}
instance Property "Parameters" DistributionTenant where
  type PropertyType "Parameters" DistributionTenant = [ParameterProperty]
  set newValue DistributionTenant {..}
    = DistributionTenant {parameters = Prelude.pure newValue, ..}
instance Property "Tags" DistributionTenant where
  type PropertyType "Tags" DistributionTenant = [Tag]
  set newValue DistributionTenant {..}
    = DistributionTenant {tags = Prelude.pure newValue, ..}