module Stratosphere.CloudFront.Distribution.TenantConfigProperty (
        module Exports, TenantConfigProperty(..), mkTenantConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.ParameterDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data TenantConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-tenantconfig.html>
    TenantConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-tenantconfig.html#cfn-cloudfront-distribution-tenantconfig-parameterdefinitions>
                          parameterDefinitions :: (Prelude.Maybe [ParameterDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTenantConfigProperty :: TenantConfigProperty
mkTenantConfigProperty
  = TenantConfigProperty
      {haddock_workaround_ = (), parameterDefinitions = Prelude.Nothing}
instance ToResourceProperties TenantConfigProperty where
  toResourceProperties TenantConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.TenantConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParameterDefinitions"
                              Prelude.<$> parameterDefinitions])}
instance JSON.ToJSON TenantConfigProperty where
  toJSON TenantConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParameterDefinitions"
                 Prelude.<$> parameterDefinitions]))
instance Property "ParameterDefinitions" TenantConfigProperty where
  type PropertyType "ParameterDefinitions" TenantConfigProperty = [ParameterDefinitionProperty]
  set newValue TenantConfigProperty {..}
    = TenantConfigProperty
        {parameterDefinitions = Prelude.pure newValue, ..}