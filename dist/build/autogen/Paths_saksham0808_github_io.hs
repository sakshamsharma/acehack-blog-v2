module Paths_saksham0808_github_io (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/saksham/.cabal/bin"
libdir     = "/home/saksham/.cabal/lib/x86_64-linux-ghc-7.10.2/saksham0808-github-io-0.1.0.0-BQpl3dbtEIxDdILgj8iXv2"
datadir    = "/home/saksham/.cabal/share/x86_64-linux-ghc-7.10.2/saksham0808-github-io-0.1.0.0"
libexecdir = "/home/saksham/.cabal/libexec"
sysconfdir = "/home/saksham/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "saksham0808_github_io_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "saksham0808_github_io_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "saksham0808_github_io_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "saksham0808_github_io_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "saksham0808_github_io_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
