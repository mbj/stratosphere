module Stratosphere.CloudFront.DistributionTenant.DomainResultProperty (
        DomainResultProperty(..), mkDomainResultProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainResultProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-domainresult.html>
    DomainResultProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-domainresult.html#cfn-cloudfront-distributiontenant-domainresult-domain>
                          domain :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-domainresult.html#cfn-cloudfront-distributiontenant-domainresult-status>
                          status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainResultProperty :: DomainResultProperty
mkDomainResultProperty
  = DomainResultProperty
      {haddock_workaround_ = (), domain = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties DomainResultProperty where
  toResourceProperties DomainResultProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant.DomainResult",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON DomainResultProperty where
  toJSON DomainResultProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "Domain" DomainResultProperty where
  type PropertyType "Domain" DomainResultProperty = Value Prelude.Text
  set newValue DomainResultProperty {..}
    = DomainResultProperty {domain = Prelude.pure newValue, ..}
instance Property "Status" DomainResultProperty where
  type PropertyType "Status" DomainResultProperty = Value Prelude.Text
  set newValue DomainResultProperty {..}
    = DomainResultProperty {status = Prelude.pure newValue, ..}