module Stratosphere.EC2.IPAMPool (
        module Exports, IPAMPool(..), mkIPAMPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.IPAMPool.ProvisionedCidrProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAMPool
  = IPAMPool {addressFamily :: (Value Prelude.Text),
              allocationDefaultNetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
              allocationMaxNetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
              allocationMinNetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
              allocationResourceTags :: (Prelude.Maybe [Tag]),
              autoImport :: (Prelude.Maybe (Value Prelude.Bool)),
              awsService :: (Prelude.Maybe (Value Prelude.Text)),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              ipamScopeId :: (Value Prelude.Text),
              locale :: (Prelude.Maybe (Value Prelude.Text)),
              provisionedCidrs :: (Prelude.Maybe [ProvisionedCidrProperty]),
              publicIpSource :: (Prelude.Maybe (Value Prelude.Text)),
              publiclyAdvertisable :: (Prelude.Maybe (Value Prelude.Bool)),
              sourceIpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag])}
mkIPAMPool :: Value Prelude.Text -> Value Prelude.Text -> IPAMPool
mkIPAMPool addressFamily ipamScopeId
  = IPAMPool
      {addressFamily = addressFamily, ipamScopeId = ipamScopeId,
       allocationDefaultNetmaskLength = Prelude.Nothing,
       allocationMaxNetmaskLength = Prelude.Nothing,
       allocationMinNetmaskLength = Prelude.Nothing,
       allocationResourceTags = Prelude.Nothing,
       autoImport = Prelude.Nothing, awsService = Prelude.Nothing,
       description = Prelude.Nothing, locale = Prelude.Nothing,
       provisionedCidrs = Prelude.Nothing,
       publicIpSource = Prelude.Nothing,
       publiclyAdvertisable = Prelude.Nothing,
       sourceIpamPoolId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IPAMPool where
  toResourceProperties IPAMPool {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMPool",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AddressFamily" JSON..= addressFamily,
                            "IpamScopeId" JSON..= ipamScopeId]
                           (Prelude.catMaybes
                              [(JSON..=) "AllocationDefaultNetmaskLength"
                                 Prelude.<$> allocationDefaultNetmaskLength,
                               (JSON..=) "AllocationMaxNetmaskLength"
                                 Prelude.<$> allocationMaxNetmaskLength,
                               (JSON..=) "AllocationMinNetmaskLength"
                                 Prelude.<$> allocationMinNetmaskLength,
                               (JSON..=) "AllocationResourceTags"
                                 Prelude.<$> allocationResourceTags,
                               (JSON..=) "AutoImport" Prelude.<$> autoImport,
                               (JSON..=) "AwsService" Prelude.<$> awsService,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Locale" Prelude.<$> locale,
                               (JSON..=) "ProvisionedCidrs" Prelude.<$> provisionedCidrs,
                               (JSON..=) "PublicIpSource" Prelude.<$> publicIpSource,
                               (JSON..=) "PubliclyAdvertisable" Prelude.<$> publiclyAdvertisable,
                               (JSON..=) "SourceIpamPoolId" Prelude.<$> sourceIpamPoolId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPAMPool where
  toJSON IPAMPool {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AddressFamily" JSON..= addressFamily,
               "IpamScopeId" JSON..= ipamScopeId]
              (Prelude.catMaybes
                 [(JSON..=) "AllocationDefaultNetmaskLength"
                    Prelude.<$> allocationDefaultNetmaskLength,
                  (JSON..=) "AllocationMaxNetmaskLength"
                    Prelude.<$> allocationMaxNetmaskLength,
                  (JSON..=) "AllocationMinNetmaskLength"
                    Prelude.<$> allocationMinNetmaskLength,
                  (JSON..=) "AllocationResourceTags"
                    Prelude.<$> allocationResourceTags,
                  (JSON..=) "AutoImport" Prelude.<$> autoImport,
                  (JSON..=) "AwsService" Prelude.<$> awsService,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Locale" Prelude.<$> locale,
                  (JSON..=) "ProvisionedCidrs" Prelude.<$> provisionedCidrs,
                  (JSON..=) "PublicIpSource" Prelude.<$> publicIpSource,
                  (JSON..=) "PubliclyAdvertisable" Prelude.<$> publiclyAdvertisable,
                  (JSON..=) "SourceIpamPoolId" Prelude.<$> sourceIpamPoolId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddressFamily" IPAMPool where
  type PropertyType "AddressFamily" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..}
    = IPAMPool {addressFamily = newValue, ..}
instance Property "AllocationDefaultNetmaskLength" IPAMPool where
  type PropertyType "AllocationDefaultNetmaskLength" IPAMPool = Value Prelude.Integer
  set newValue IPAMPool {..}
    = IPAMPool
        {allocationDefaultNetmaskLength = Prelude.pure newValue, ..}
instance Property "AllocationMaxNetmaskLength" IPAMPool where
  type PropertyType "AllocationMaxNetmaskLength" IPAMPool = Value Prelude.Integer
  set newValue IPAMPool {..}
    = IPAMPool {allocationMaxNetmaskLength = Prelude.pure newValue, ..}
instance Property "AllocationMinNetmaskLength" IPAMPool where
  type PropertyType "AllocationMinNetmaskLength" IPAMPool = Value Prelude.Integer
  set newValue IPAMPool {..}
    = IPAMPool {allocationMinNetmaskLength = Prelude.pure newValue, ..}
instance Property "AllocationResourceTags" IPAMPool where
  type PropertyType "AllocationResourceTags" IPAMPool = [Tag]
  set newValue IPAMPool {..}
    = IPAMPool {allocationResourceTags = Prelude.pure newValue, ..}
instance Property "AutoImport" IPAMPool where
  type PropertyType "AutoImport" IPAMPool = Value Prelude.Bool
  set newValue IPAMPool {..}
    = IPAMPool {autoImport = Prelude.pure newValue, ..}
instance Property "AwsService" IPAMPool where
  type PropertyType "AwsService" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..}
    = IPAMPool {awsService = Prelude.pure newValue, ..}
instance Property "Description" IPAMPool where
  type PropertyType "Description" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..}
    = IPAMPool {description = Prelude.pure newValue, ..}
instance Property "IpamScopeId" IPAMPool where
  type PropertyType "IpamScopeId" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..} = IPAMPool {ipamScopeId = newValue, ..}
instance Property "Locale" IPAMPool where
  type PropertyType "Locale" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..}
    = IPAMPool {locale = Prelude.pure newValue, ..}
instance Property "ProvisionedCidrs" IPAMPool where
  type PropertyType "ProvisionedCidrs" IPAMPool = [ProvisionedCidrProperty]
  set newValue IPAMPool {..}
    = IPAMPool {provisionedCidrs = Prelude.pure newValue, ..}
instance Property "PublicIpSource" IPAMPool where
  type PropertyType "PublicIpSource" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..}
    = IPAMPool {publicIpSource = Prelude.pure newValue, ..}
instance Property "PubliclyAdvertisable" IPAMPool where
  type PropertyType "PubliclyAdvertisable" IPAMPool = Value Prelude.Bool
  set newValue IPAMPool {..}
    = IPAMPool {publiclyAdvertisable = Prelude.pure newValue, ..}
instance Property "SourceIpamPoolId" IPAMPool where
  type PropertyType "SourceIpamPoolId" IPAMPool = Value Prelude.Text
  set newValue IPAMPool {..}
    = IPAMPool {sourceIpamPoolId = Prelude.pure newValue, ..}
instance Property "Tags" IPAMPool where
  type PropertyType "Tags" IPAMPool = [Tag]
  set newValue IPAMPool {..}
    = IPAMPool {tags = Prelude.pure newValue, ..}