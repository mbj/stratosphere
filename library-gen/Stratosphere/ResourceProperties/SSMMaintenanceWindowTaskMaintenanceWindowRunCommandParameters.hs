
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskNotificationConfig

-- | Full data type definition for
-- SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters. See
-- 'ssmMaintenanceWindowTaskMaintenanceWindowRunCommandParameters' for a
-- more convenient constructor.
data SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters =
  SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersComment :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHash :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHashType :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersNotificationConfig :: Maybe SSMMaintenanceWindowTaskNotificationConfig
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3BucketName :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3KeyPrefix :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersParameters :: Maybe Object
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersServiceRoleArn :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersTimeoutSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters where
  toJSON SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters{..} =
    object $
    catMaybes
    [ fmap (("Comment",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersComment
    , fmap (("DocumentHash",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHash
    , fmap (("DocumentHashType",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHashType
    , fmap (("NotificationConfig",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersNotificationConfig
    , fmap (("OutputS3BucketName",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3BucketName
    , fmap (("OutputS3KeyPrefix",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3KeyPrefix
    , fmap (("Parameters",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersParameters
    , fmap (("ServiceRoleArn",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersServiceRoleArn
    , fmap (("TimeoutSeconds",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersTimeoutSeconds
    ]

-- | Constructor for
-- 'SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters'
-- containing required fields as arguments.
ssmMaintenanceWindowTaskMaintenanceWindowRunCommandParameters
  :: SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters
ssmMaintenanceWindowTaskMaintenanceWindowRunCommandParameters  =
  SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersComment = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHash = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHashType = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersNotificationConfig = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3BucketName = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3KeyPrefix = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersParameters = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersServiceRoleArn = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersTimeoutSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-comment
ssmmwtmwrcpComment :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Text))
ssmmwtmwrcpComment = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersComment (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-documenthash
ssmmwtmwrcpDocumentHash :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Text))
ssmmwtmwrcpDocumentHash = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHash (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHash = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-documenthashtype
ssmmwtmwrcpDocumentHashType :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Text))
ssmmwtmwrcpDocumentHashType = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHashType (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersDocumentHashType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-notificationconfig
ssmmwtmwrcpNotificationConfig :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe SSMMaintenanceWindowTaskNotificationConfig)
ssmmwtmwrcpNotificationConfig = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersNotificationConfig (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersNotificationConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-outputs3bucketname
ssmmwtmwrcpOutputS3BucketName :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Text))
ssmmwtmwrcpOutputS3BucketName = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3BucketName (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3BucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-outputs3keyprefix
ssmmwtmwrcpOutputS3KeyPrefix :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Text))
ssmmwtmwrcpOutputS3KeyPrefix = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3KeyPrefix (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersOutputS3KeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-parameters
ssmmwtmwrcpParameters :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe Object)
ssmmwtmwrcpParameters = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersParameters (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-servicerolearn
ssmmwtmwrcpServiceRoleArn :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Text))
ssmmwtmwrcpServiceRoleArn = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersServiceRoleArn (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-timeoutseconds
ssmmwtmwrcpTimeoutSeconds :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters (Maybe (Val Integer))
ssmmwtmwrcpTimeoutSeconds = lens _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersTimeoutSeconds (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowRunCommandParametersTimeoutSeconds = a })
