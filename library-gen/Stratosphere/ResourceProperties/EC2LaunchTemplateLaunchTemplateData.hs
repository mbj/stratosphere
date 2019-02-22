{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateLaunchTemplateData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LaunchTemplateBlockDeviceMapping
import Stratosphere.ResourceProperties.EC2LaunchTemplateCapacityReservationSpecification
import Stratosphere.ResourceProperties.EC2LaunchTemplateCpuOptions
import Stratosphere.ResourceProperties.EC2LaunchTemplateCreditSpecification
import Stratosphere.ResourceProperties.EC2LaunchTemplateElasticGpuSpecification
import Stratosphere.ResourceProperties.EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
import Stratosphere.ResourceProperties.EC2LaunchTemplateHibernationOptions
import Stratosphere.ResourceProperties.EC2LaunchTemplateIamInstanceProfile
import Stratosphere.ResourceProperties.EC2LaunchTemplateInstanceMarketOptions
import Stratosphere.ResourceProperties.EC2LaunchTemplateLicenseSpecification
import Stratosphere.ResourceProperties.EC2LaunchTemplateMonitoring
import Stratosphere.ResourceProperties.EC2LaunchTemplateNetworkInterface
import Stratosphere.ResourceProperties.EC2LaunchTemplatePlacement
import Stratosphere.ResourceProperties.EC2LaunchTemplateTagSpecification

-- | Full data type definition for EC2LaunchTemplateLaunchTemplateData. See
-- 'ec2LaunchTemplateLaunchTemplateData' for a more convenient constructor.
data EC2LaunchTemplateLaunchTemplateData =
  EC2LaunchTemplateLaunchTemplateData
  { _eC2LaunchTemplateLaunchTemplateDataBlockDeviceMappings :: Maybe [EC2LaunchTemplateBlockDeviceMapping]
  , _eC2LaunchTemplateLaunchTemplateDataCapacityReservationSpecification :: Maybe EC2LaunchTemplateCapacityReservationSpecification
  , _eC2LaunchTemplateLaunchTemplateDataCpuOptions :: Maybe EC2LaunchTemplateCpuOptions
  , _eC2LaunchTemplateLaunchTemplateDataCreditSpecification :: Maybe EC2LaunchTemplateCreditSpecification
  , _eC2LaunchTemplateLaunchTemplateDataDisableApiTermination :: Maybe (Val Bool)
  , _eC2LaunchTemplateLaunchTemplateDataEbsOptimized :: Maybe (Val Bool)
  , _eC2LaunchTemplateLaunchTemplateDataElasticGpuSpecifications :: Maybe [EC2LaunchTemplateElasticGpuSpecification]
  , _eC2LaunchTemplateLaunchTemplateDataElasticInferenceAccelerators :: Maybe [EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator]
  , _eC2LaunchTemplateLaunchTemplateDataHibernationOptions :: Maybe EC2LaunchTemplateHibernationOptions
  , _eC2LaunchTemplateLaunchTemplateDataIamInstanceProfile :: Maybe EC2LaunchTemplateIamInstanceProfile
  , _eC2LaunchTemplateLaunchTemplateDataImageId :: Maybe (Val Text)
  , _eC2LaunchTemplateLaunchTemplateDataInstanceInitiatedShutdownBehavior :: Maybe (Val Text)
  , _eC2LaunchTemplateLaunchTemplateDataInstanceMarketOptions :: Maybe EC2LaunchTemplateInstanceMarketOptions
  , _eC2LaunchTemplateLaunchTemplateDataInstanceType :: Maybe (Val Text)
  , _eC2LaunchTemplateLaunchTemplateDataKernelId :: Maybe (Val Text)
  , _eC2LaunchTemplateLaunchTemplateDataKeyName :: Maybe (Val Text)
  , _eC2LaunchTemplateLaunchTemplateDataLicenseSpecifications :: Maybe [EC2LaunchTemplateLicenseSpecification]
  , _eC2LaunchTemplateLaunchTemplateDataMonitoring :: Maybe EC2LaunchTemplateMonitoring
  , _eC2LaunchTemplateLaunchTemplateDataNetworkInterfaces :: Maybe [EC2LaunchTemplateNetworkInterface]
  , _eC2LaunchTemplateLaunchTemplateDataPlacement :: Maybe EC2LaunchTemplatePlacement
  , _eC2LaunchTemplateLaunchTemplateDataRamDiskId :: Maybe (Val Text)
  , _eC2LaunchTemplateLaunchTemplateDataSecurityGroupIds :: Maybe (ValList Text)
  , _eC2LaunchTemplateLaunchTemplateDataSecurityGroups :: Maybe (ValList Text)
  , _eC2LaunchTemplateLaunchTemplateDataTagSpecifications :: Maybe [EC2LaunchTemplateTagSpecification]
  , _eC2LaunchTemplateLaunchTemplateDataUserData :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateLaunchTemplateData where
  toJSON EC2LaunchTemplateLaunchTemplateData{..} =
    object $
    catMaybes
    [ fmap (("BlockDeviceMappings",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataBlockDeviceMappings
    , fmap (("CapacityReservationSpecification",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataCapacityReservationSpecification
    , fmap (("CpuOptions",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataCpuOptions
    , fmap (("CreditSpecification",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataCreditSpecification
    , fmap (("DisableApiTermination",) . toJSON . fmap Bool') _eC2LaunchTemplateLaunchTemplateDataDisableApiTermination
    , fmap (("EbsOptimized",) . toJSON . fmap Bool') _eC2LaunchTemplateLaunchTemplateDataEbsOptimized
    , fmap (("ElasticGpuSpecifications",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataElasticGpuSpecifications
    , fmap (("ElasticInferenceAccelerators",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataElasticInferenceAccelerators
    , fmap (("HibernationOptions",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataHibernationOptions
    , fmap (("IamInstanceProfile",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataIamInstanceProfile
    , fmap (("ImageId",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataImageId
    , fmap (("InstanceInitiatedShutdownBehavior",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataInstanceInitiatedShutdownBehavior
    , fmap (("InstanceMarketOptions",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataInstanceMarketOptions
    , fmap (("InstanceType",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataInstanceType
    , fmap (("KernelId",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataKernelId
    , fmap (("KeyName",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataKeyName
    , fmap (("LicenseSpecifications",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataLicenseSpecifications
    , fmap (("Monitoring",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataMonitoring
    , fmap (("NetworkInterfaces",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataNetworkInterfaces
    , fmap (("Placement",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataPlacement
    , fmap (("RamDiskId",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataRamDiskId
    , fmap (("SecurityGroupIds",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataSecurityGroupIds
    , fmap (("SecurityGroups",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataSecurityGroups
    , fmap (("TagSpecifications",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataTagSpecifications
    , fmap (("UserData",) . toJSON) _eC2LaunchTemplateLaunchTemplateDataUserData
    ]

instance FromJSON EC2LaunchTemplateLaunchTemplateData where
  parseJSON (Object obj) =
    EC2LaunchTemplateLaunchTemplateData <$>
      (obj .:? "BlockDeviceMappings") <*>
      (obj .:? "CapacityReservationSpecification") <*>
      (obj .:? "CpuOptions") <*>
      (obj .:? "CreditSpecification") <*>
      fmap (fmap (fmap unBool')) (obj .:? "DisableApiTermination") <*>
      fmap (fmap (fmap unBool')) (obj .:? "EbsOptimized") <*>
      (obj .:? "ElasticGpuSpecifications") <*>
      (obj .:? "ElasticInferenceAccelerators") <*>
      (obj .:? "HibernationOptions") <*>
      (obj .:? "IamInstanceProfile") <*>
      (obj .:? "ImageId") <*>
      (obj .:? "InstanceInitiatedShutdownBehavior") <*>
      (obj .:? "InstanceMarketOptions") <*>
      (obj .:? "InstanceType") <*>
      (obj .:? "KernelId") <*>
      (obj .:? "KeyName") <*>
      (obj .:? "LicenseSpecifications") <*>
      (obj .:? "Monitoring") <*>
      (obj .:? "NetworkInterfaces") <*>
      (obj .:? "Placement") <*>
      (obj .:? "RamDiskId") <*>
      (obj .:? "SecurityGroupIds") <*>
      (obj .:? "SecurityGroups") <*>
      (obj .:? "TagSpecifications") <*>
      (obj .:? "UserData")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateLaunchTemplateData' containing required
-- fields as arguments.
ec2LaunchTemplateLaunchTemplateData
  :: EC2LaunchTemplateLaunchTemplateData
ec2LaunchTemplateLaunchTemplateData  =
  EC2LaunchTemplateLaunchTemplateData
  { _eC2LaunchTemplateLaunchTemplateDataBlockDeviceMappings = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataCapacityReservationSpecification = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataCpuOptions = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataCreditSpecification = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataDisableApiTermination = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataEbsOptimized = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataElasticGpuSpecifications = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataElasticInferenceAccelerators = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataHibernationOptions = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataIamInstanceProfile = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataImageId = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataInstanceInitiatedShutdownBehavior = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataInstanceMarketOptions = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataInstanceType = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataKernelId = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataKeyName = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataLicenseSpecifications = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataMonitoring = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataNetworkInterfaces = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataPlacement = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataRamDiskId = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataSecurityGroupIds = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataSecurityGroups = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataTagSpecifications = Nothing
  , _eC2LaunchTemplateLaunchTemplateDataUserData = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-blockdevicemappings
ecltltdBlockDeviceMappings :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe [EC2LaunchTemplateBlockDeviceMapping])
ecltltdBlockDeviceMappings = lens _eC2LaunchTemplateLaunchTemplateDataBlockDeviceMappings (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification
ecltltdCapacityReservationSpecification :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateCapacityReservationSpecification)
ecltltdCapacityReservationSpecification = lens _eC2LaunchTemplateLaunchTemplateDataCapacityReservationSpecification (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataCapacityReservationSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions
ecltltdCpuOptions :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateCpuOptions)
ecltltdCpuOptions = lens _eC2LaunchTemplateLaunchTemplateDataCpuOptions (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataCpuOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-creditspecification
ecltltdCreditSpecification :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateCreditSpecification)
ecltltdCreditSpecification = lens _eC2LaunchTemplateLaunchTemplateDataCreditSpecification (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataCreditSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-disableapitermination
ecltltdDisableApiTermination :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Bool))
ecltltdDisableApiTermination = lens _eC2LaunchTemplateLaunchTemplateDataDisableApiTermination (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataDisableApiTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-ebsoptimized
ecltltdEbsOptimized :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Bool))
ecltltdEbsOptimized = lens _eC2LaunchTemplateLaunchTemplateDataEbsOptimized (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-elasticgpuspecifications
ecltltdElasticGpuSpecifications :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe [EC2LaunchTemplateElasticGpuSpecification])
ecltltdElasticGpuSpecifications = lens _eC2LaunchTemplateLaunchTemplateDataElasticGpuSpecifications (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataElasticGpuSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-elasticinferenceaccelerators
ecltltdElasticInferenceAccelerators :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe [EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator])
ecltltdElasticInferenceAccelerators = lens _eC2LaunchTemplateLaunchTemplateDataElasticInferenceAccelerators (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataElasticInferenceAccelerators = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-hibernationoptions
ecltltdHibernationOptions :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateHibernationOptions)
ecltltdHibernationOptions = lens _eC2LaunchTemplateLaunchTemplateDataHibernationOptions (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataHibernationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile
ecltltdIamInstanceProfile :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateIamInstanceProfile)
ecltltdIamInstanceProfile = lens _eC2LaunchTemplateLaunchTemplateDataIamInstanceProfile (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataIamInstanceProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-imageid
ecltltdImageId :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdImageId = lens _eC2LaunchTemplateLaunchTemplateDataImageId (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataImageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instanceinitiatedshutdownbehavior
ecltltdInstanceInitiatedShutdownBehavior :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdInstanceInitiatedShutdownBehavior = lens _eC2LaunchTemplateLaunchTemplateDataInstanceInitiatedShutdownBehavior (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataInstanceInitiatedShutdownBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions
ecltltdInstanceMarketOptions :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateInstanceMarketOptions)
ecltltdInstanceMarketOptions = lens _eC2LaunchTemplateLaunchTemplateDataInstanceMarketOptions (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataInstanceMarketOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instancetype
ecltltdInstanceType :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdInstanceType = lens _eC2LaunchTemplateLaunchTemplateDataInstanceType (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-kernelid
ecltltdKernelId :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdKernelId = lens _eC2LaunchTemplateLaunchTemplateDataKernelId (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataKernelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-keyname
ecltltdKeyName :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdKeyName = lens _eC2LaunchTemplateLaunchTemplateDataKeyName (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-licensespecifications
ecltltdLicenseSpecifications :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe [EC2LaunchTemplateLicenseSpecification])
ecltltdLicenseSpecifications = lens _eC2LaunchTemplateLaunchTemplateDataLicenseSpecifications (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataLicenseSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-monitoring
ecltltdMonitoring :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplateMonitoring)
ecltltdMonitoring = lens _eC2LaunchTemplateLaunchTemplateDataMonitoring (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-networkinterfaces
ecltltdNetworkInterfaces :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe [EC2LaunchTemplateNetworkInterface])
ecltltdNetworkInterfaces = lens _eC2LaunchTemplateLaunchTemplateDataNetworkInterfaces (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataNetworkInterfaces = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-placement
ecltltdPlacement :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe EC2LaunchTemplatePlacement)
ecltltdPlacement = lens _eC2LaunchTemplateLaunchTemplateDataPlacement (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-ramdiskid
ecltltdRamDiskId :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdRamDiskId = lens _eC2LaunchTemplateLaunchTemplateDataRamDiskId (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataRamDiskId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-securitygroupids
ecltltdSecurityGroupIds :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (ValList Text))
ecltltdSecurityGroupIds = lens _eC2LaunchTemplateLaunchTemplateDataSecurityGroupIds (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-securitygroups
ecltltdSecurityGroups :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (ValList Text))
ecltltdSecurityGroups = lens _eC2LaunchTemplateLaunchTemplateDataSecurityGroups (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-tagspecifications
ecltltdTagSpecifications :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe [EC2LaunchTemplateTagSpecification])
ecltltdTagSpecifications = lens _eC2LaunchTemplateLaunchTemplateDataTagSpecifications (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataTagSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-userdata
ecltltdUserData :: Lens' EC2LaunchTemplateLaunchTemplateData (Maybe (Val Text))
ecltltdUserData = lens _eC2LaunchTemplateLaunchTemplateDataUserData (\s a -> s { _eC2LaunchTemplateLaunchTemplateDataUserData = a })
